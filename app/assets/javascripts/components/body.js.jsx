var Body = React.createClass({
  getInitialState: function() {
    return {
      questionsList: [],
      solutionsList: [],
    };
  },
  createNewSolution: function(event) {
    event.preventDefault();
    var newQuestion = {
      id: event.target.id,
      prompt: event.target.parentNode.textContent,
    }
    var body = this;
    call('/solutions', 'post', {question_id: newQuestion.id}).then(function(serverData){
      body.props.go('answerViewPort', newQuestion, serverData);
    });
  },
  updateQuestionList: function(questionObjects){
    this.setState({
      questionsList: questionObjects
    });
  },
  updateSolutionList: function(solutionObjects){
    this.setState({
      solutionsList: solutionObjects
    });
  },
  renderSolution: function(question, solution){
    this.props.go('answerViewPort', question, solution);
  },
  handleSuccessfulLogin: function(user){
    this.props.login(user);
  },
  render: function() {
    if(this.props.page === 'login'){
      var login = <Login login={this.handleSuccessfulLogin}/>
    }else if(this.props.page === 'answerViewPort'){
      var viewPort = <AnswerQuestionViewPort question={this.props.question}
                                             solution={this.props.solution}
                                             user={this.props.user}/>
    }else{
      var questionList = <QuestionList answer={this.createNewSolution}
                                       list={this.state.questionsList}
                                       makeList={this.updateQuestionList}
                                       user={this.props.user} />
      var solutionList = <OpenSolutionsList answer={this.renderSolution}
                                            list={this.state.solutionsList}
                                            questionList={this.state.questionsList}
                                            makeList={this.updateSolutionList}
                                            user={this.props.user} />
    }

    return (
      <div id="main">
        { login }
        { questionList }
        { solutionList }
        { viewPort}
      </div>
    );
  }
});
