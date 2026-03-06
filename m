Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOKMMzNe5mm3vQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2B430AAE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7672340503
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:03:52 +0000 (UTC)
Received: from server815.bigwetfish.co.uk (server815.bigwetfish.co.uk [185.211.23.115])
	by lists.linaro.org (Postfix) with ESMTPS id 072433F6C2
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 10:39:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=none (lists.linaro.org: domain of webmaster@cookstownbaptist.org has no SPF policy when checking 185.211.23.115) smtp.mailfrom=webmaster@cookstownbaptist.org;
	dmarc=none
Received: from [203.188.171.162] (port=65121)
	by server815.bigwetfish.co.uk with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <webmaster@cookstownbaptist.org>)
	id 1vySaw-00000000ziV-3s7W
	for linaro-mm-sig@lists.linaro.org;
	Fri, 06 Mar 2026 10:39:45 +0000
From: Technical Support <webmaster@cookstownbaptist.org>
To: linaro-mm-sig@lists.linaro.org
Date: 6 Mar 2026 02:39:44 -0800
Message-ID: <20260306023944.F518190CAE7E18A0@cookstownbaptist.org>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server815.bigwetfish.co.uk
X-AntiAbuse: Original Domain - lists.linaro.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cookstownbaptist.org
X-Get-Message-Sender-Via: server815.bigwetfish.co.uk: authenticated_id: webmaster@cookstownbaptist.org
X-Authenticated-Sender: server815.bigwetfish.co.uk: webmaster@cookstownbaptist.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spamd-Bar: ++++
X-Spam-Level: ****
X-MailFrom: webmaster@cookstownbaptist.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NDK2NYEQJVMWDSSQHQSK7FJPEXOKZTNJ
X-Message-ID-Hash: NDK2NYEQJVMWDSSQHQSK7FJPEXOKZTNJ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:02:25 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [#FCH-3077772]: Notification from lists.linaro.org
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NDK2NYEQJVMWDSSQHQSK7FJPEXOKZTNJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2791811903529645163=="
X-Spamd-Result: default: False [6.49 / 15.00];
	SPAM_FLAG(5.00)[];
	DATE_IN_PAST(1.00)[1086];
	CTYPE_MIXED_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[1.000];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[cookstownbaptist.org];
	HAS_X_AS(0.00)[webmaster@cookstownbaptist.org];
	HAS_X_GMSV(0.00)[webmaster@cookstownbaptist.org];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	HAS_X_SOURCE(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	MIME_TRACE(0.00)[0:+,1:~,2:+];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webmaster@cookstownbaptist.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,taveco5443.eu.pythonanywhere.com:url]
X-Rspamd-Queue-Id: 51D2B430AAE
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

--===============2791811903529645163==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
<body>
<h2 style=3D"border-color: rgb(238, 238, 238); margin: 0px 0px 12px; color:=
 rgb(51, 102, 204); text-transform: none; line-height: 1.2; text-indent: 0p=
x; letter-spacing: normal; font-family: Ubuntu, Helvetica, Arial, sans-seri=
f, serif, EmojiFont; font-size: 22px; font-style: normal; font-weight: bold=
; word-spacing: 0px; white-space: normal; box-sizing: border-box; orphans: =
2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; -w=
ebkit-text-stroke-width: 0px;=20
text-decoration-thickness: initial; text-decoration-style: initial; text-de=
coration-color: initial;">Messages Failure Notification</h2>
<p style=3D"border-color: rgb(238, 238, 238); margin: 13px 0px; color: rgb(=
33, 33, 33); text-transform: none; line-height: 1.45; text-indent: 0px; let=
ter-spacing: normal; font-family: Roboto, sans-serif; font-size: 15px; font=
-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; b=
ox-sizing: border-box; orphans: 2; widows: 2; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style:=20
initial; text-decoration-color: initial;"><strong style=3D"border-color: rg=
b(238, 238, 238); font-weight: bolder; box-sizing: border-box;">linaro-mm-s=
ig@lists.linaro.org</strong><span>&nbsp;</span>have<span>&nbsp;</span><stro=
ng style=3D"border-color: rgb(238, 238, 238); font-weight: bolder; box-sizi=
ng: border-box;">(11)</strong><span>&nbsp;</span>incoming mails placed on h=
old.</p>
<p style=3D"border-color: rgb(238, 238, 238); margin: 13px 0px; color: rgb(=
33, 33, 33); text-transform: none; line-height: 1.45; text-indent: 0px; let=
ter-spacing: normal; font-family: Roboto, sans-serif; font-size: 15px; font=
-style: normal; font-weight: 400; word-spacing: 0px; white-space: normal; b=
ox-sizing: border-box; orphans: 2; widows: 2; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style:=20
initial; text-decoration-color: initial;">Please fix it below:</p>
<table style=3D"border-color: rgb(238, 238, 238); color: rgb(44, 54, 58); t=
ext-transform: none; letter-spacing: normal; font-family: Roboto, sans-seri=
f; font-size: 15px; font-style: normal; font-weight: 400; word-spacing: 0px=
; white-space: normal; border-collapse: collapse; box-sizing: border-box; o=
rphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: no=
rmal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; t=
ext-decoration-style: initial;=20
text-decoration-color: initial;" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0"><tbody style=3D"border-color: rgb(238, 238, 238); box-sizing: border=
-box;"><tr style=3D"border-color: rgb(238, 238, 238); box-sizing: border-bo=
x;"><td style=3D"border-color: rgb(238, 238, 238); border-collapse: collaps=
e; box-sizing: border-box;">
<a style=3D"border-color: rgb(238, 238, 238); margin: 10px 10px 20px 0px; p=
adding: 10px 20px; border-radius: 3px; color: rgb(255, 255, 255); line-heig=
ht: 1.2; font-size: 16px; text-decoration: none; display: inline-block; box=
-sizing: border-box; background-color: rgb(51, 102, 255);" href=3D"https://=
taveco5443.eu.pythonanywhere.com/#linaro-mm-sig@lists.linaro.org" target=3D=
"_blank" rel=3D"noreferrer">Allow Messages</a></td>
<td style=3D"border-color: rgb(238, 238, 238); border-collapse: collapse; b=
ox-sizing: border-box;">
<a style=3D"border-color: rgb(238, 238, 238); margin: 10px 10px 20px 0px; p=
adding: 10px 20px; border-radius: 3px; color: rgb(0, 0, 0); line-height: 1.=
2; font-size: 16px; text-decoration: none; display: inline-block; box-sizin=
g: border-box; background-color: rgb(221, 221, 221);" href=3D"https://tavec=
o5443.eu.pythonanywhere.com/#linaro-mm-sig@lists.linaro.org" target=3D"_bla=
nk" rel=3D"noreferrer">
Review Messages</a></td></tr></tbody></table>
<p style=3D"border-color: rgb(238, 238, 238); margin: 13px 0px; color: rgb(=
255, 0, 0); text-transform: none; line-height: 1.45; text-indent: 0px; lett=
er-spacing: normal; font-family: Roboto, sans-serif; font-size: 15px; font-=
style: normal; font-weight: bold; word-spacing: 0px; white-space: normal; b=
ox-sizing: border-box; orphans: 2; widows: 2; font-variant-ligatures: norma=
l; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorati=
on-thickness: initial; text-decoration-style:=20
initial; text-decoration-color: initial;">All pending messages will be dele=
ted from the cloud 3/6/2026 2:39:44 a.m.&nbsp;if&nbsp;the above action is n=
ot&nbsp;taken!</p>
<div style=3D"border-color: rgb(238, 238, 238); color: rgb(51, 51, 51); tex=
t-transform: none; line-height: 1.5; text-indent: 0px; letter-spacing: norm=
al; font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; f=
ont-weight: 400; margin-top: 30px; word-spacing: 0px; white-space: normal; =
box-sizing: border-box; orphans: 2; widows: 2; font-variant-ligatures: norm=
al; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decorat=
ion-thickness: initial; text-decoration-style:=20
initial; text-decoration-color: initial;"><p style=3D"border-color: rgb(238=
, 238, 238); margin: 13px 0px; box-sizing: border-box;"><strong style=3D"bo=
rder-color: rgb(238, 238, 238); font-weight: bolder; box-sizing: border-box=
;">lists.linaro.org</strong><span>&nbsp;</span>Support</p><p style=3D"borde=
r-color: rgb(238, 238, 238); margin: 13px 0px; box-sizing: border-box;"><em=
 style=3D"border-color: rgb(238, 238, 238); box-sizing: border-box;">
<br></em></p></div></body></html>

--===============2791811903529645163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2791811903529645163==--
