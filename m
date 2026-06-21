Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fQTWB+vWN2piUgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:19:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B53936AAB28
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:19:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9CF343D0E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:19:53 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0591643C33
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:19:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:19:48 -0000
Message-ID: <178204438802.3086686.1164529305287294575@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: HYFEIAYGY2SYO5EABI47CAHKIROCQHEM
X-Message-ID-Hash: HYFEIAYGY2SYO5EABI47CAHKIROCQHEM
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?5Zyo57ea6LO86LK36aaZ5riv6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354Wn77yI5b6u5L+hSUTvvJpXZXNidXRtYW7vvInlnKjnt5ros7zosrfkuK3lnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+mfk+Wci+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g57ea5LiK6LO86LK35Y+w54Gj6Lqr5YiG6K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms7DlnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aXpeacrOi6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK3576O5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms6LomK3ouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36Iux5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfliqDmi7/lpKfouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aMquWogei6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36aas5L6G6KW/5Lqe6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms5XlnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aNt+WFi+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK35be06KW/6Lqr5Lu96K2J5ZKM6aeV6ae
 b5Z+354WnLiDlnKjnt5ros7zosrfmhJvmspnlsLzkup7ouqvku73orYnlkozpp5Xpp5vln7fnhacu?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HYFEIAYGY2SYO5EABI47CAHKIROCQHEM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.97 / 15.00];
	LONG_SUBJ(2.28)[304];
	MID_RHS_MATCH_TO(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,firstdocumentsonline.com:url,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B53936AAB28

5Zyo57ea6LO86LK36aaZ5riv6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354Wn77yI5b6u5L+hSUTvvJpX
ZXNidXRtYW7vvInlnKjnt5ros7zosrfkuK3lnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWc
qOe3muizvOiyt+mfk+Wci+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g57ea5LiK6LO86LK35Y+w
54Gj6Lqr5YiG6K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms7DlnIvouqvku73orYnl
kozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aXpeacrOi6q+S7veitieWSjOmnlemnm+Wft+eF
py4g5Zyo57ea6LO86LK3576O5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zo
srfms6LomK3ouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+i6q+S7veitieWS
jOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36Iux5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354Wn
LiDlnKjnt5ros7zosrfliqDmi7/lpKfouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muiz
vOiyt+aMquWogei6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36aas5L6G6KW/
5Lqe6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms5XlnIvouqvku73orYnl
kozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aNt+WFi+i6q+S7veitieWSjOmnlemnm+Wft+eF
py4g5Zyo57ea6LO86LK35be06KW/6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zo
srfmhJvmspnlsLzkup7ouqvku73orYnlkozpp5Xpp5vln7fnhacuIA0KDQoNCui0reS5sOS4reWb
vempvumptuaJp+eFpzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v6LSt5Lmw5Lit
5Zu96am+6am25omn54WnLw0K6LSt5Lmw5Lit5Zu96Lqr5Lu96K+BOiBodHRwczovL2ZpcnN0ZG9j
dW1lbnRzb25saW5lLmNvbS/otK3kubDkuK3lm73ouqvku73or4EvDQros7zosrfpn5PlnIvouqvl
iIborYk6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+izvOiyt+mfk+Wci+i6q+WI
huitiS8NCuWcqOe3muizvOiyt+aXpeacrOi6q+S7veitiTogaHR0cHM6Ly9maXJzdGRvY3VtZW50
c29ubGluZS5jb20v5Zyo57ea6LO86LK35pel5pys6Lqr5Lu96K2JLw0K57ea5LiK6LO86LK35Y+w
54Gj6Lqr5YiG6K2JOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/nt5rkuIros7zo
srflj7DngaPouqvliIborYkvDQros7zosrfpn5PlnIvouqvliIborYk6IGh0dHBzOi8vZmlyc3Rk
b2N1bWVudHNvbmxpbmUuY29tL2J1eS1rb3JlYW4taWQtY2FyZC8NCuizvOiyt+e+juWci+mnleeF
pzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LXUtcy1kcml2ZXJzLWxpY2Vu
c2UtMi8NCuWcqOe3muizvOiyt+ecn+ato+eahOWPsOeBo+mnleeFpzogaHR0cHM6Ly9maXJzdGRv
Y3VtZW50c29ubGluZS5jb20v5Zyo57ea6LO86LK355yf5q2j55qE5Y+w54Gj6aeV54WnLw0K5Zyo
57q/6LSt5Lmw5oSP5aSn5Yip6am+6am25omn54WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25s
aW5lLmNvbS/lnKjnur/otK3kubDmhI/lpKfliKnpqb7pqbbmiafnhacvDQrlnKjnur/otK3kubDl
paXlnLDliKnpqb7pqbbmiafnhac6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+Wc
qOe6v+i0reS5sOWlpeWcsOWIqempvumptuaJp+eFpy8NCuWcqOe6v+i0reS5sOasp+ebn+mpvump
tuaJp+eFpzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20v5Zyo57q/6LSt5Lmw5qyn
55uf6am+6am25omn54WnLw0K5Zyo57q/6LSt5Lmw5b635Zu96am+6am25omn54WnOiBodHRwczov
L2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/lnKjnur/otK3kubDlvrflm73pqb7pqbbmiafnhacv
DQros7zosrfliqDmi7/lpKfmsLjkuYXlsYXmsJHljaE6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNv
bmxpbmUuY29tL+izvOiyt+WKoOaLv+Wkp+awuOS5heWxheawkeWNoS8NCg0KKFdoYXRzQXBw77ya
KzQ5IDE1MjEgNTA2NjQ2MikNCg0KKOW+ruS/oSBJRO+8mldlc2J1dG1hbikNCg0KKFRlbGVncmFt
77yad2VzYnV0bWFuMCkNCg0KKOS/oeeuse+8mndlc2J1dG1hbjBAZ21haWwuY29tKQ0KDQpodHRw
czovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS8NCg0K5Zyo57ea6LO86LK36Zi/5ouJ5be06aas
5bee6aeV54Wn44CC5Zyo57ea6LO86LK36Zi/5ouJ5pav5Yqg5bee6aeV54Wn44CC5Zyo57ea6LO8
6LK35Lqe5Yip5qGR6YKj5bee6aeV54Wn44CC5Zyo57ea6LO86LK36Zi/6IKv6Imy5bee6aeV54Wn
44CC5Zyo57ea6LO86LK35Yqg5bee6aeV54Wn44CC5Zyo57ea6LO86LK356eR576F5ouJ5aSa5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35bq35raF54uE5qC85bee6aeV54Wn44CC5Zyo57ea6LO86LK3
54m55ouJ6I+v5bee6aeV54Wn44CC5Zyo57ea6LO86LK35L2b576F6KOh6YGU5bee6aeV54Wn44CC
5Zyo57ea6LO86LK35L2Q5rK75Lqe5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aSP5aiB5aS35bee
6aeV54Wn44CC5Zyo57ea6LO86LK35oSb6YGU6I235bee6aeV54Wn44CC5Zyo57ea6LO86LK35LyK
5Yip6Ku+5LyK5bee6aeV54Wn44CC5Zyo57ea6LO86LK35Y2w56ys5a6J57SN5bee6aeV54Wn44CC
5Zyo57ea6LO86LK35oSb6I236I+v5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aCq6Jap5pav5bee
6aeV54Wn44CC5Zyo57ea6LO86LK36IKv5aGU5Z+65bee6aeV54Wn44CC5Zyo57ea6LO86LK36Lev
5piT5pav5a6J6YKj5bee6aeV54Wn44CC5Zyo57ea6LO86LK357es5Zug5bee6aeV54Wn44CC5Zyo
57ea6LO86LK36aas6KOh6Jit5bee6aeV54Wn44CC5Zyo57ea6LO86LK36aas6Jap6Ku45aGe5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35a+G6KW/5qC55bee6aeV54Wn44CC5Zyo57ea6LO86LK35piO
5bC86JiH6YGU5bee6aeV54Wn44CC5Zyo57ea6LO86LK35a+G6KW/6KW/5q+U5bee6aeV54Wn44CC
5Zyo57ea6LO86LK35a+G6JiH6KOh5bee6aeV54Wn44CC5Zyo57ea6LO86LK36JKZ5aSn5ou/5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35YWn5biD5ouJ5pav5Yqg5bee6aeV54Wn44CC5Zyo57ea6LO8
6LK35YWn6I+v6YGU5bee6aeV54Wn44CC5Zyo57ea6LO86LK35paw572V5biD5LuA54i+5bee6aeV
54Wn44CC5Zyo57ea6LO86LK35paw5r6k6KW/5bee6aeV54Wn44CC5Zyo57ea6LO86LK35paw5aKo
6KW/5ZOl5bee6aeV54Wn44CC5Zyo57ea6LO86LK357SQ57SE5bee6aeV54Wn44CC5Zyo57ea6LO8
6LK35YyX5Y2h576F5L6G57SN5bee6aeV54Wn44CC5Zyo57ea6LO86LK35YyX6YGU56eR5LuW5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35L+E5Lql5L+E5bee6aeV54Wn44CC5Zyo57ea6LO86LK35L+E
5YWL5ouJ6I236aas5bee6aeV54Wn44CC5Zyo57ea6LO86LK35L+E5YuS5bKh5bee6aeV54Wn44CC
5Zyo57ea6LO86LK36LOT5bee6aeV54Wn44CC5Zyo57ea6LO86LK3576F5b635bO25bee6aeV54Wn
44CC5Zyo57ea6LO86LK35Y2X5Y2h576F5L6G57SN5bee6aeV54Wn44CC5Zyo57ea6LO86LK35Y2X
6YGU56eR5LuW5bee6aeV54Wn44CC5Zyo57ea6LO86LK355Sw57SN6KW/5bee6aeV54Wn44CC5Zyo
57ea6LO86LK35b635YWL6Jap5pav5bee6aeV54Wn44CC5Zyo57ea6LO86LK354y25LuW5bee6aeV
54Wn44CC5Zyo57ea6LO86LK35L2b6JKZ54m55bee6aeV54Wn44CC5Zyo57ea6LO86LK35byX5ZCJ
5bC85Lqe5bee6aeV54Wn44CC5Zyo57ea6LO86LK36I+v55ub6aCT5bee6aeV54Wn44CC5Zyo57ea
6LO86LK36KW/57at5ZCJ5bC85Lqe5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aiB5pav5bq36L6b
5bee6aeV54Wn44CC5Zyo57ea6LO86LK35oe35L+E5piO5bee6aeV54Wn44CC6LO86LK3576O5ZyL
6aeV54WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS9idXktdS1zLWRyaXZlcnMt
bGljZW5zZS0yLw0KDQrlnKjnur/otK3kubDms6LlhbDpqb7pqbbmiafnhac6IGh0dHBzOi8vZmly
c3Rkb2N1bWVudHNvbmxpbmUuY29tL+WcqOe6v+i0reS5sOazouWFsOmpvumptuaJp+eFpy8NCuWc
qOe6v+i0reS5sOeRnuWFuOmpvumptuaJp+eFpzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGlu
ZS5jb20v5Zyo57q/6LSt5Lmw55Ge5YW46am+6am25omn54WnLw0K5Zyo57q/6LSt5Lmw55Ge5aOr
6am+6am25omn54WnOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNvbS/lnKjnur/otK3k
ubDnkZ7lo6vpqb7pqbbmiafnhacvDQrlnKjnur/otK3kubDoi7Hlm73pqb7pqbbmiafnhac6IGh0
dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL+WcqOe6v+i0reS5sOiLseWbvempvumptuaJ
p+eFpy8NCuWcqOe6v+i0reS5sOeIseWwlOWFsOmpvumptuaJp+eFpzogaHR0cHM6Ly9maXJzdGRv
Y3VtZW50c29ubGluZS5jb20v5Zyo57q/6LSt5Lmw54ix5bCU5YWw6am+6am25omn54WnLw0K5Zyo
57ea6LO86LK35rOi6Jit6Lqr5Lu96K2JOiBodHRwczovL2ZpcnN0ZG9jdW1lbnRzb25saW5lLmNv
bS9idXktcG9saXNoLWlkLWNhcmQvDQrlnKjnt5ros7zosrfmr5TliKnmmYLouqvku73orYk6IGh0
dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL2J1eS1iZWxnaWFuLWlkLWNhcmQvDQrlnKjn
t5ros7zosrfopb/nj63niZnouqvku73orYk6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUu
Y29tL2J1eS1zcGFuaXNoLWlkLWNhcmQvDQrlnKjnt5ros7zosrfnvqnlpKfliKnouqvku73orYk6
IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUuY29tL2J1eS1pdGFsaWFuLWlkLWNhcmQvDQrl
nKjnt5ros7zosrfmlrDliqDlnaHouqvku73orYk6IGh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxp
bmUuY29tL2J1eS1zaW5nYXBvcmUtaWQtY2FyZC8NCuWcqOe3muizvOiyt+atkOebn+WxheeVmeio
seWPrzogaHR0cHM6Ly9maXJzdGRvY3VtZW50c29ubGluZS5jb20vYnV5LWFuLWV1LXJlc2lkZW5j
ZS1wZXJtaXQtb25saW5lLw0KDQooV2hhdHNBcHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0KDQoo5b6u
5L+hIElE77yaV2VzYnV0bWFuKQ0KDQooVGVsZWdyYW3vvJp3ZXNidXRtYW4wKQ0KDQoo5L+h566x
77yad2VzYnV0bWFuMEBnbWFpbC5jb20pDQoNCmh0dHBzOi8vZmlyc3Rkb2N1bWVudHNvbmxpbmUu
Y29tLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
