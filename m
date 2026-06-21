Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SkrqEYrWN2pOUgcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:18:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0096AAB0A
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 14:18:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2A6C40C8E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Jun 2026 12:18:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D861B40A7A
	for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Jun 2026 12:18:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: douglasesmith206@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Sun, 21 Jun 2026 12:18:10 -0000
Message-ID: <178204429088.3084199.14925649740314516878@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: GKRZHCFA7LIS6OPP4M3PANPHZBE3KNGR
X-Message-ID-Hash: GKRZHCFA7LIS6OPP4M3PANPHZBE3KNGR
X-MailFrom: douglasesmith206@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?5Zyo57ea6LO86LK36aaZ5riv6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354Wn77yI5b6u5L+hSUTvvJpXZXNidXRtYW7vvInlnKjnt5ros7zosrfkuK3lnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+mfk+Wci+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g57ea5LiK6LO86LK35Y+w54Gj6Lqr5YiG6K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms7DlnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aXpeacrOi6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK3576O5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms6LomK3ouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36Iux5ZyL6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfliqDmi7/lpKfouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aMquWogei6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK36aas5L6G6KW/5Lqe6Lqr5Lu96K2J5ZKM6aeV6aeb5Z+354WnLiDlnKjnt5ros7zosrfms5XlnIvouqvku73orYnlkozpp5Xpp5vln7fnhacuIOWcqOe3muizvOiyt+aNt+WFi+i6q+S7veitieWSjOmnlemnm+Wft+eFpy4g5Zyo57ea6LO86LK35be06KW/6Lqr5Lu96K2J5ZKM6aeV6ae
 b5Z+354WnLiDlnKjnt5ros7zosrfmhJvmspnlsLzkup7ouqvku73orYnlkozpp5Xpp5vln7fnhacu?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GKRZHCFA7LIS6OPP4M3PANPHZBE3KNGR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [11.27 / 15.00];
	SPAM_FLAG(5.00)[];
	SEM_URIBL_FRESH15(3.00)[buytraveldocsonline.com:url];
	LONG_SUBJ(2.28)[304];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER(0.00)[douglasesmith206@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,buytraveldocsonline.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB0096AAB0A
X-Spam: Yes

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
srfmhJvmspnlsLzkup7ouqvku73orYnlkozpp5Xpp5vln7fnhacuICANCg0K6LSt5Lmw5Lit5Zu9
6am+6am25omn54WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+i0reS5sOS4reWb
vempvumptuaJp+eFpy8NCui0reS5sOS4reWbvei6q+S7veivgTogaHR0cHM6Ly9idXl0cmF2ZWxk
b2Nzb25saW5lLmNvbS/otK3kubDkuK3lm73ouqvku73or4EvDQros7zosrfpn5PlnIvouqvliIbo
rYk6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v6LO86LK36Z+T5ZyL6Lqr5YiG6K2J
Lw0K5Zyo57ea6LO86LK35pel5pys6Lqr5Lu96K2JOiBodHRwczovL2J1eXRyYXZlbGRvY3Nvbmxp
bmUuY29tL+WcqOe3muizvOiyt+aXpeacrOi6q+S7veitiS8NCue3muS4iuizvOiyt+WPsOeBo+i6
q+WIhuitiTogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/nt5rkuIros7zosrflj7Dn
gaPouqvliIborYkvDQros7zosrfpn5PlnIvouqvliIborYk6IGh0dHBzOi8vYnV5dHJhdmVsZG9j
c29ubGluZS5jb20vYnV5LWtvcmVhbi1pZC1jYXJkLw0K6LO86LK3576O5ZyL6aeV54WnOiBodHRw
czovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS11LXMtZHJpdmVycy1saWNlbnNlLTIvDQrl
nKjnt5ros7zosrfnnJ/mraPnmoTlj7DngaPpp5Xnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29u
bGluZS5jb20v5Zyo57ea6LO86LK355yf5q2j55qE5Y+w54Gj6aeV54WnLw0K5Zyo57q/6LSt5Lmw
5oSP5aSn5Yip6am+6am25omn54WnOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+Wc
qOe6v+i0reS5sOaEj+Wkp+WIqempvumptuaJp+eFpy8NCuWcqOe6v+i0reS5sOWlpeWcsOWIqemp
vumptuaJp+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/lnKjnur/otK3kubDl
paXlnLDliKnpqb7pqbbmiafnhacvDQrlnKjnur/otK3kubDmrKfnm5/pqb7pqbbmiafnhac6IGh0
dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v5Zyo57q/6LSt5Lmw5qyn55uf6am+6am25omn
54WnLw0K5Zyo57q/6LSt5Lmw5b635Zu96am+6am25omn54WnOiBodHRwczovL2J1eXRyYXZlbGRv
Y3NvbmxpbmUuY29tL+WcqOe6v+i0reS5sOW+t+WbvempvumptuaJp+eFpy8NCuizvOiyt+WKoOaL
v+Wkp+awuOS5heWxheawkeWNoTogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS/os7zo
srfliqDmi7/lpKfmsLjkuYXlsYXmsJHljaEvDQoNCihXaGF0c0FwcO+8mis0OSAxNTIxIDUwNjY0
NjIpDQoNCijlvq7kv6EgSUTvvJpXZXNidXRtYW4pDQoNCihUZWxlZ3Jhbe+8mndlc2J1dG1hbjAp
DQoNCijkv6HnrrHvvJp3ZXNidXRtYW4wQGdtYWlsLmNvbSkNCg0KaHR0cHM6Ly9idXl0cmF2ZWxk
b2Nzb25saW5lLmNvbS8NCg0K5Zyo57ea6LO86LK36Zi/5ouJ5be06aas5bee6aeV54Wn44CC5Zyo
57ea6LO86LK36Zi/5ouJ5pav5Yqg5bee6aeV54Wn44CC5Zyo57ea6LO86LK35Lqe5Yip5qGR6YKj
5bee6aeV54Wn44CC5Zyo57ea6LO86LK36Zi/6IKv6Imy5bee6aeV54Wn44CC5Zyo57ea6LO86LK3
5Yqg5bee6aeV54Wn44CC5Zyo57ea6LO86LK356eR576F5ouJ5aSa5bee6aeV54Wn44CC5Zyo57ea
6LO86LK35bq35raF54uE5qC85bee6aeV54Wn44CC5Zyo57ea6LO86LK354m55ouJ6I+v5bee6aeV
54Wn44CC5Zyo57ea6LO86LK35L2b576F6KOh6YGU5bee6aeV54Wn44CC5Zyo57ea6LO86LK35L2Q
5rK75Lqe5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aSP5aiB5aS35bee6aeV54Wn44CC5Zyo57ea
6LO86LK35oSb6YGU6I235bee6aeV54Wn44CC5Zyo57ea6LO86LK35LyK5Yip6Ku+5LyK5bee6aeV
54Wn44CC5Zyo57ea6LO86LK35Y2w56ys5a6J57SN5bee6aeV54Wn44CC5Zyo57ea6LO86LK35oSb
6I236I+v5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aCq6Jap5pav5bee6aeV54Wn44CC5Zyo57ea
6LO86LK36IKv5aGU5Z+65bee6aeV54Wn44CC5Zyo57ea6LO86LK36Lev5piT5pav5a6J6YKj5bee
6aeV54Wn44CC5Zyo57ea6LO86LK357es5Zug5bee6aeV54Wn44CC5Zyo57ea6LO86LK36aas6KOh
6Jit5bee6aeV54Wn44CC5Zyo57ea6LO86LK36aas6Jap6Ku45aGe5bee6aeV54Wn44CC5Zyo57ea
6LO86LK35a+G6KW/5qC55bee6aeV54Wn44CC5Zyo57ea6LO86LK35piO5bC86JiH6YGU5bee6aeV
54Wn44CC5Zyo57ea6LO86LK35a+G6KW/6KW/5q+U5bee6aeV54Wn44CC5Zyo57ea6LO86LK35a+G
6JiH6KOh5bee6aeV54Wn44CC5Zyo57ea6LO86LK36JKZ5aSn5ou/5bee6aeV54Wn44CC5Zyo57ea
6LO86LK35YWn5biD5ouJ5pav5Yqg5bee6aeV54Wn44CC5Zyo57ea6LO86LK35YWn6I+v6YGU5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35paw572V5biD5LuA54i+5bee6aeV54Wn44CC5Zyo57ea6LO8
6LK35paw5r6k6KW/5bee6aeV54Wn44CC5Zyo57ea6LO86LK35paw5aKo6KW/5ZOl5bee6aeV54Wn
44CC5Zyo57ea6LO86LK357SQ57SE5bee6aeV54Wn44CC5Zyo57ea6LO86LK35YyX5Y2h576F5L6G
57SN5bee6aeV54Wn44CC5Zyo57ea6LO86LK35YyX6YGU56eR5LuW5bee6aeV54Wn44CC5Zyo57ea
6LO86LK35L+E5Lql5L+E5bee6aeV54Wn44CC5Zyo57ea6LO86LK35L+E5YWL5ouJ6I236aas5bee
6aeV54Wn44CC5Zyo57ea6LO86LK35L+E5YuS5bKh5bee6aeV54Wn44CC5Zyo57ea6LO86LK36LOT
5bee6aeV54Wn44CC5Zyo57ea6LO86LK3576F5b635bO25bee6aeV54Wn44CC5Zyo57ea6LO86LK3
5Y2X5Y2h576F5L6G57SN5bee6aeV54Wn44CC5Zyo57ea6LO86LK35Y2X6YGU56eR5LuW5bee6aeV
54Wn44CC5Zyo57ea6LO86LK355Sw57SN6KW/5bee6aeV54Wn44CC5Zyo57ea6LO86LK35b635YWL
6Jap5pav5bee6aeV54Wn44CC5Zyo57ea6LO86LK354y25LuW5bee6aeV54Wn44CC5Zyo57ea6LO8
6LK35L2b6JKZ54m55bee6aeV54Wn44CC5Zyo57ea6LO86LK35byX5ZCJ5bC85Lqe5bee6aeV54Wn
44CC5Zyo57ea6LO86LK36I+v55ub6aCT5bee6aeV54Wn44CC5Zyo57ea6LO86LK36KW/57at5ZCJ
5bC85Lqe5bee6aeV54Wn44CC5Zyo57ea6LO86LK35aiB5pav5bq36L6b5bee6aeV54Wn44CC5Zyo
57ea6LO86LK35oe35L+E5piO5bee6aeV54Wn44CC6LO86LK3576O5ZyL6aeV54WnOiBodHRwczov
L2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS11LXMtZHJpdmVycy1saWNlbnNlLTIvDQoNCuWc
qOe6v+i0reS5sOazouWFsOmpvumptuaJp+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5l
LmNvbS/lnKjnur/otK3kubDms6LlhbDpqb7pqbbmiafnhacvDQrlnKjnur/otK3kubDnkZ7lhbjp
qb7pqbbmiafnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v5Zyo57q/6LSt5Lmw
55Ge5YW46am+6am25omn54WnLw0K5Zyo57q/6LSt5Lmw55Ge5aOr6am+6am25omn54WnOiBodHRw
czovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL+WcqOe6v+i0reS5sOeRnuWjq+mpvumptuaJp+eF
py8NCuWcqOe6v+i0reS5sOiLseWbvempvumptuaJp+eFpzogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nz
b25saW5lLmNvbS/lnKjnur/otK3kubDoi7Hlm73pqb7pqbbmiafnhacvDQrlnKjnur/otK3kubDn
iLHlsJTlhbDpqb7pqbbmiafnhac6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20v5Zyo
57q/6LSt5Lmw54ix5bCU5YWw6am+6am25omn54WnLw0K5Zyo57ea6LO86LK35rOi6Jit6Lqr5Lu9
6K2JOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS1wb2xpc2gtaWQtY2FyZC8N
CuWcqOe3muizvOiyt+avlOWIqeaZgui6q+S7veitiTogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25s
aW5lLmNvbS9idXktYmVsZ2lhbi1pZC1jYXJkLw0K5Zyo57ea6LO86LK36KW/54+t54mZ6Lqr5Lu9
6K2JOiBodHRwczovL2J1eXRyYXZlbGRvY3NvbmxpbmUuY29tL2J1eS1zcGFuaXNoLWlkLWNhcmQv
DQrlnKjnt5ros7zosrfnvqnlpKfliKnouqvku73orYk6IGh0dHBzOi8vYnV5dHJhdmVsZG9jc29u
bGluZS5jb20vYnV5LWl0YWxpYW4taWQtY2FyZC8NCuWcqOe3muizvOiyt+aWsOWKoOWdoei6q+S7
veitiTogaHR0cHM6Ly9idXl0cmF2ZWxkb2Nzb25saW5lLmNvbS9idXktc2luZ2Fwb3JlLWlkLWNh
cmQvDQrlnKjnt5ros7zosrfmrZDnm5/lsYXnlZnoqLHlj686IGh0dHBzOi8vYnV5dHJhdmVsZG9j
c29ubGluZS5jb20vYnV5LWFuLWV1LXJlc2lkZW5jZS1wZXJtaXQtb25saW5lLw0KDQooV2hhdHNB
cHDvvJorNDkgMTUyMSA1MDY2NDYyKQ0KDQoo5b6u5L+hIElE77yaV2VzYnV0bWFuKQ0KDQooVGVs
ZWdyYW3vvJp3ZXNidXRtYW4wKQ0KDQoo5L+h566x77yad2VzYnV0bWFuMEBnbWFpbC5jb20pDQoN
Cmh0dHBzOi8vYnV5dHJhdmVsZG9jc29ubGluZS5jb20vDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
