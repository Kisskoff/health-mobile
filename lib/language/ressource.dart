// ignore_for_file: camel_case_types, non_constant_identifier_names

class LANG_OPTION {
  String appBarTile = "";
  String appBarSettingsTitle = "";
  String accountText = "";
  String accountTextDescription = "";
  String currencyText = "";
  String deleteText = "";
  String deleteTextDescription = "";
  String langText = "";
  String connectText = "";
  String supportContactText = "";
  String supportAboutText = "";
  String titleAccount = "";
  List<String> bottomNavigationText = ["", "", "", ""];
  List<String> incExpeText = ["", ""];
  String balanceText = "";
  List<String> catExpeText = ["", "", "", "", "", "", "", "", "", ""];
  List<String> catIncText = ["", ""];
  List<String> upadateInfoText = ["", "", "", "", "", "", "", ""];
  List<String> statutInfoText = ["", "", "", "", ""];
  List<String> statutDescriptionText = ["", "", ""];
  String validatorText = "";
  String udpateSuccesText = "";
  String requestErrorText = "";
  List<String> noConnectionErrorText = ["", ""];
  List<String> accountExpireText = ["", ""];
  List<String> accountBlockedText = ["", ""];
  List<String> catExpenseOrIcomeTitleText = ["", ""];
  List<String> catExpenseOrIcomeDescriptionText = ["", ""];
  List<String> spendOrReceiveText = ["", ""];
  String walletListTitleText = "";
  String walletTooltipAddWalletText = "";
  String walletTooltipChangeWaletText = "";
  List<String> hMtitleText = ["", ""];
  String aboutUsText = "";

  LANG_OPTION(String langOption) {
    switch (langOption) {
      case "Français":
        appBarTile = FRANCAIS.lang.getAppBarTitle();
        appBarSettingsTitle = FRANCAIS.lang.getSettingsAppBarTitle();
        currencyText = FRANCAIS.lang.getCurrencyText();
        langText = FRANCAIS.lang.getLangText();
        supportContactText = FRANCAIS.lang.getSupportContactText();
        supportAboutText = FRANCAIS.lang.getSupportAboutText();
        bottomNavigationText = FRANCAIS.lang.getBottomNavigationText();
        incExpeText = FRANCAIS.lang.getIncExpe();
        balanceText = FRANCAIS.lang.getTotalBalanceText();
        catExpeText = FRANCAIS.lang.getCatExpeText();
        catIncText = FRANCAIS.lang.getCatIncText();
        connectText = FRANCAIS.lang.getConnectText();
        deleteText = FRANCAIS.lang.getDeleteText();
        deleteTextDescription = FRANCAIS.lang.getDeleteTextDescription();
        accountText = FRANCAIS.lang.getAccountText();
        accountTextDescription = FRANCAIS.lang.getAccountTextDescription();
        titleAccount = FRANCAIS.lang.getAppBarAccount();
        upadateInfoText = FRANCAIS.lang.getUpdateInfoText();
        statutInfoText = FRANCAIS.lang.getStatutInfoText();
        validatorText = FRANCAIS.lang.getValidatorText();
        udpateSuccesText = FRANCAIS.lang.getUpdateSuccessText();
        requestErrorText = FRANCAIS.lang.getRequestErrorText();
        noConnectionErrorText = FRANCAIS.lang.getNoConnectionErrorText();
        accountExpireText = FRANCAIS.lang.getAccountExpireText();
        accountBlockedText = FRANCAIS.lang.getAccountBlockedText();
        statutDescriptionText = FRANCAIS.lang.getStatutDescriptionText();
        catExpenseOrIcomeTitleText =
            FRANCAIS.lang.getCatExpenseIncomeTitleText();
        catExpenseOrIcomeDescriptionText =
            FRANCAIS.lang.getCatExpenseIncomeDescriptionText();
        spendOrReceiveText = FRANCAIS.lang.getSpendOrReceiveText();
        walletListTitleText = FRANCAIS.lang.getWalletListTitleText();
        walletTooltipAddWalletText =
            FRANCAIS.lang.getWalletTooltipAddWalletText();
        walletTooltipChangeWaletText =
            FRANCAIS.lang.getWalletTooltipChangeWaletText();
        hMtitleText = FRANCAIS.lang.getHMtitleText();
        aboutUsText = FRANCAIS.lang.getAboutUsText();

        break;
      case "Anglais":
        appBarTile = ANGLAIS.lang.getAppBarTitle();
        appBarSettingsTitle = ANGLAIS.lang.getSettingsAppBarTitle();
        currencyText = ANGLAIS.lang.getCurrencyText();
        langText = ANGLAIS.lang.getLangText();
        supportContactText = ANGLAIS.lang.getSupportContactText();
        supportAboutText = ANGLAIS.lang.getSupportAboutText();
        bottomNavigationText = ANGLAIS.lang.getBottomNavigationText();
        incExpeText = ANGLAIS.lang.getIncExpe();
        balanceText = ANGLAIS.lang.getTotalBalanceText();
        catExpeText = ANGLAIS.lang.getCatExpeText();
        catIncText = ANGLAIS.lang.getCatIncText();
        connectText = ANGLAIS.lang.getConnectText();
        deleteText = ANGLAIS.lang.getDeleteText();
        deleteTextDescription = ANGLAIS.lang.getDeleteTextDescription();
        accountText = ANGLAIS.lang.getAccountText();
        accountTextDescription = ANGLAIS.lang.getAccountTextDescription();
        titleAccount = ANGLAIS.lang.getAppBarAccount();
        upadateInfoText = ANGLAIS.lang.getUpdateInfoText();
        statutInfoText = ANGLAIS.lang.getStatutInfoText();
        validatorText = ANGLAIS.lang.getValidatorText();
        udpateSuccesText = ANGLAIS.lang.getUpdateSuccessText();
        requestErrorText = ANGLAIS.lang.getRequestErrorText();
        noConnectionErrorText = ANGLAIS.lang.getNoConnectionErrorText();
        accountExpireText = ANGLAIS.lang.getAccountExpireText();
        accountBlockedText = ANGLAIS.lang.getAccountBlockedText();
        statutDescriptionText = ANGLAIS.lang.getStatutDescriptionText();
        catExpenseOrIcomeTitleText =
            ANGLAIS.lang.getCatExpenseIncomeTitleText();
        catExpenseOrIcomeDescriptionText =
            ANGLAIS.lang.getCatExpenseIncomeDescriptionText();
        spendOrReceiveText = ANGLAIS.lang.getSpendOrReceiveText();
        walletListTitleText = ANGLAIS.lang.getWalletListTitleText();
        walletTooltipAddWalletText =
            ANGLAIS.lang.getWalletTooltipAddWalletText();
        walletTooltipChangeWaletText =
            ANGLAIS.lang.getWalletTooltipChangeWaletText();
        hMtitleText = ANGLAIS.lang.getHMtitleText();
        aboutUsText = ANGLAIS.lang.getAboutUsText();

        break;
    }
  }
}

class FRANCAIS {
  static final FRANCAIS lang = FRANCAIS._init();
  FRANCAIS._init();

  // main Screen text..........
  String getAppBarTitle() {
    return "GUIDE DE GESTION";
  }

  String getAppBarAccount() {
    return "Mes informations";
  }

  String getTotalBalanceText() {
    return "Solde";
  }

  List<String> getBottomNavigationText() {
    return ["Catégorie", "Historique", "Health Money", "Portefeuille"];
  }

  List<String> getIncExpe() {
    return ["Mes dépenses", "Mes revenus"];
  }

  List<String> getCatExpeText() {
    return [
      "MOBILE",
      "ACHAT",
      "TRANSPORT",
      "FACTURE",
      "ALIMENTATION",
      "ABONNEMENT",
      "ASSURANCE",
      "SANTE",
      "COTISATION",
      "AUTRE"
    ];
  }

  List<String> getCatIncText() {
    return [
      "SALAIRE",
      "REVENU SUP.",
    ];
  }

  // Settings text..........
  String getSettingsAppBarTitle() {
    return "Parametres";
  }

  String getAccountText() {
    return "MON COMPTE";
  }

  String getAccountTextDescription() {
    return "Verifiez mes informations";
  }

  String getCurrencyText() {
    return "DEVISE";
  }

  String getLangText() {
    return "LANGUE";
  }

  String getDeleteText() {
    return "Réinitialiser";
  }

  String getDeleteTextDescription() {
    return "Supprimer toutes les données";
  }

  String getSupportContactText() {
    return "Contacter un conseiller client";
  }

  String getSupportAboutText() {
    return "A propos de nous";
  }

  String getConnectText() {
    return "Se deconnecter";
  }

  List<String> getUpdateInfoText() {
    return [
      "Nom et prenom",
      "Email",
      "Telephone",
      "Ville",
      "Situation financiere",
      "Jour de paye",
      "Année experience",
      "Enregistrer les modifications",
    ];
  }

  List<String> getStatutInfoText() {
    return [
      "Statut",
      "ACTIF",
      "EXPIRER",
      "BLOQUER",
      "ADMINISTRATEUR",
    ];
  }

  List<String> getStatutDescriptionText() {
    return [
      "Votre compte restera actif jusqu'au ",
      "Votre compte a expirer, veuillez contacter votre conseiller financier",
      "Votre compte a été bloqué, veuillez contacter votre conseiller financier pour plus de détail"
    ];
  }

  String getValidatorText() {
    return "Saisie obligatoire";
  }

  String getUpdateSuccessText() {
    return "Modification effectuée";
  }

  String getRequestErrorText() {
    return "Un probeme est survenu, réessayer plus tard";
  }

  List<String> getNoConnectionErrorText() {
    return [
      "Impossible de se connecter",
      "Verifier votre connexion internet",
    ];
  }

  List<String> getAccountExpireText() {
    return [
      "Compte expiré",
      "Vous ne pouvez pas effectuer cette opération, veuillez renouveler votre abonnement",
    ];
  }

  List<String> getAccountBlockedText() {
    return [
      "Compte bloqué",
      "Vous ne pouvez pas effectuer cette opération, veuillez contacter votre conseiller financier pour regler cela",
    ];
  }

  List<String> getCatExpenseIncomeTitleText() {
    return [
      "Combien avez-vous dépensé ? ",
      "Combien avez-vous gagné ? ",
    ];
  }

  List<String> getCatExpenseIncomeDescriptionText() {
    return [
      "Préciser votre dépense",
      "Préciser votre gain",
    ];
  }

  List<String> getSpendOrReceiveText() {
    return [
      "Dépensé par ... ?",
      "reçu par ... ?",
    ];
  }

  String getWalletListTitleText() {
    return "Mes moyens de transactions";
  }

  String getWalletTooltipAddWalletText() {
    return "Ajouter un moyen de transaction";
  }

  String getWalletTooltipChangeWaletText() {
    return "Transferer de l'argent";
  }

  String getAboutUsText() {
    return "VOTRE DIAGNOSTIC FINANCIER HEALTH MONEY .Plus qu’un conseiller financier, un ami.";
  }

  List<String> getHMtitleText() {
    return [
      "Données personnelles",
      "DEBUTER VOTRE PRE-ANALYSE",
    ];
  }
}

class ANGLAIS {
  static final ANGLAIS lang = ANGLAIS._init();
  ANGLAIS._init();

  // main Screen text..........
  String getAppBarTitle() {
    return "MANAGEMENT GUIDE";
  }

  String getAppBarAccount() {
    return "My information";
  }

  String getTotalBalanceText() {
    return "Balance";
  }

  List<String> getBottomNavigationText() {
    return ["Category", "History", "Health Money", "Wallet"];
  }

  List<String> getIncExpe() {
    return ["Expenses", "Income"];
  }

  List<String> getCatExpeText() {
    return [
      "PHONE",
      "PURCHASE",
      "TRANSPORT",
      "INVOICE",
      "FOOD",
      "SUBSCRIPTION",
      "ASSURANCE",
      "HEALTH",
      "CONTRIBUTION",
      "OTHER",
    ];
  }

  List<String> getCatIncText() {
    return [
      "SALARY",
      "INCOME ADD.",
    ];
  }

  // Settings text..........
  String getSettingsAppBarTitle() {
    return "Settings";
  }

  String getAccountText() {
    return "MY ACCOUNT";
  }

  String getAccountTextDescription() {
    return "Check my information";
  }

  String getCurrencyText() {
    return "CURRENCY";
  }

  String getLangText() {
    return "LANGUAGE";
  }

  String getDeleteText() {
    return "Reset";
  }

  String getDeleteTextDescription() {
    return "Delete all saved data";
  }

  String getSupportContactText() {
    return "Contact a customer advisor";
  }

  String getSupportAboutText() {
    return "About us";
  }

  String getConnectText() {
    return "Log out ";
  }

  List<String> getUpdateInfoText() {
    return [
      "Full name",
      "E-mail",
      "Phone",
      "City",
      "Financial situation",
      "Pay day",
      "Year experience",
      "Save Changes",
    ];
  }

  List<String> getStatutInfoText() {
    return [
      "Statuts",
      "ACTIVE",
      "EXPIRE",
      "BLOCKED",
      "ADMINISTRATOR",
    ];
  }

  List<String> getStatutDescriptionText() {
    return [
      "Your account will remain active until ",
      "Your account has expired, please contact your financial advisor",
      "Your account has been blocked, please contact your financial advisor for more details"
    ];
  }

  String getValidatorText() {
    return "required";
  }

  String getUpdateSuccessText() {
    return "Change made";
  }

  String getRequestErrorText() {
    return "A problem has occurred, try again later";
  }

  List<String> getNoConnectionErrorText() {
    return [
      "Impossible to connect",
      "Check your internet connection",
    ];
  }

  List<String> getAccountExpireText() {
    return [
      "Account expired",
      "You cannot perform this operation, please renew your subscription",
    ];
  }

  List<String> getAccountBlockedText() {
    return [
      "Blocked account",
      "You cannot perform this operation, please contact your financial adviser to settle this",
    ];
  }

  List<String> getCatExpenseIncomeTitleText() {
    return [
      "How much did you spend ? ",
      "How much did you win ? ",
    ];
  }

  List<String> getCatExpenseIncomeDescriptionText() {
    return [
      "Specify your expense",
      "Specify your gain",
    ];
  }

  List<String> getSpendOrReceiveText() {
    return [
      "Spent by ... ?",
      "received by ... ?",
    ];
  }

  String getWalletListTitleText() {
    return "My means of transactions";
  }

  String getWalletTooltipAddWalletText() {
    return "Add a transaction method";
  }

  String getWalletTooltipChangeWaletText() {
    return "Transfer money";
  }

  List<String> getHMtitleText() {
    return [
      "Personal data",
      "START YOUR PRE-ANALYSIS",
    ];
  }

  String getAboutUsText() {
    return "YOUR HEALTH MONEY FINANCIAL DIAGNOSIS. More than a financial adviser, a friend.";
  }
}
