Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K8KOGeSMMmq11wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 14:02:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0DF6996FD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 14:02:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E5D740A4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Jun 2026 12:02:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 079F743F33
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2026 11:38:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: chenshentu92@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Wed, 17 Jun 2026 11:38:47 -0000
Message-ID: <178169632702.664256.4150479722291195543@lists.linaro.org>
User-Agent: HyperKitty on http://lists.linaro.org/
Message-ID-Hash: MFRTTBXBJ2JYSDC3K4STKXUNOMFMYTKU
X-Message-ID-Hash: MFRTTBXBJ2JYSDC3K4STKXUNOMFMYTKU
X-MailFrom: chenshentu92@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?6LSt5Lmw55yf5YGH5oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iei0reS5sOmpvumptuaJp+eFp++8jOeUs+ivt+aKpOeFp++8jOi0reS5sOecn+ato+eahOiLseWbveaKpOeFp++8jOWcqOe6v+i0reS5sOaWsOWKoOWdoeaKpOeFp++8jOi0reS5sOaXpeacrOaKpOeFp++8jOi0reS5sOa+s+Wkp+WIqeS6muaKpOeFp++8jOi0reS5sOazsOWbveaKpOeFp++8jOi0reS5sOmYv+iBlOmFi+aKpOeFp++8jOi0reS5sOWKoOaLv+Wkp+aKpOeFp++8jOi0reS5sOi2iuWNl+aKpOeFp++8jCDliqDmi7/lpKflsYXnlZnorrjlj68sIChXaGF0c0FwcCA6ICs0OSAxNTc1IDM3NTY5NzQpIOi0reS5sOmprOadpeilv+S6muaKpOeFp++8jOWHuuWUruWBh+aKpOeFp++8jOWcqOWTqumHjOWcqOe6v+i0reS5sOe+juWbveaKpOeFp++8jOaIkeWmguS9leiOt+W+l+aKpOeFp++8iOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDTvvInotK3kubDpppnmuK/miqTnhafnmoTlgYfmiavmj4/ku7bvvIzlnKjnur/otK3kubDmiqTnhafvvIzlv6vpgJ/ku47lrrbph4zlnKjnur/otK3kubDmiqTnhafvvIzmiJHlj6/ku6XlnKjnur/lip7nkIbnvo7lm73miqTnhaflkJfvvIzotK3kubDmiqTnhafpnIDopoHlpJrplb/ml7bpl7TvvIznvo7lm73miqTnhaflpJrlsJHpkrHvvIzlpoLkvZXojrflvpfmiqTnhafvvIzojrflvpfnvo7lm73miqTnhafvvIzlnKjlk6rph4zlj6/ku6XojrflvpfmiJHpmYT
 ov5HnmoTmiqTnhafvvIzotK3kubDnnJ/mraPnmoTnlJ/niannibnlvoHmiqTnhafvvIznq4vljbPnlLPor7fmiqTnhafvvIzotK3kubDlpJbkuqTmiqTnhafvvIzlnKjkuK3lm73otK3kubDnvo7lm73miqTnhafvvIzlnKjnur/otK3kubDnvo7lm73miqTnhafvvIzvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJ5Zyo57q/6LSt5Lmw6Iqs5YWw5oqk54Wn77yM5Zyo57q/6LSt5Lmw5b635Zu95oqk54Wn77yM6LSt5Lmw5paw5Zyo57q/6LSt5Lmw5paw6KW/5YWw5oqk54Wn44CB5Zyo57q/6LSt5Lmw54ix5bCU5YWw5oqk54Wn44CB5Zyo57q/6LSt5Lmw5Li56bqm5oqk54Wn44CB5Zyo57q/6LSt5Lmw6JGh6JCE54mZ5oqk54Wn44CB5Zyo57q/6LSt5Lmw6JGh6JCE54mZ5oqk54Wn44CB5Zyo57q/6LSt5Lmw5Y2i5qOu5aCh5oqk54Wn44CB5Zyo57q/6LSt5Lmw5Zyf6ICz5YW25oqk54Wn44CB5Zyo57q/6LSt5Lmw6I235YWw5oqk54Wn44CB5Zyo57q/6LSt5Lmw5oyq5aiB5oqk54Wn44CB5Zyo57q/6LSt5Lmw5rOi5YWw5oqk54Wn44CB5Zyo57q/6LSt5Lmw5biM6IWK5oqk54Wn44CB5Zyo57q/6LSt5Lmw5YyI54mZ5Yip5oqk54Wn44CB5Zyo57q/6LSt5Lmw6KW/54+t54mZ5oqk54Wn44CB5Zyo57q/6LSt5Lmw5pm65Yip5oqk54Wn44CB5Zyo57q/6LSt5Lmw5YWL572X5Zyw5Lqa5oqk54Wn44CB5Zyo57q/6LSt5Lmw5ZOl5pav6L6+6buO5Yqg5oqk54WnIChXaGF0c0FwcCA6ICs0OSAxNTc1IDM3NTY5NzQpIGh0dHBzOi8v
 YnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WKoOaLv+Wkp+WxheeVmeiuuOWPry8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu95oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDnvo7lm73pqb7pqbbmiafnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOato+Wul+e+juWbvee7v+WNoS8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu95oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDkuK3lm73miqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+WcqOe6v+i0reS5sOaKpOeFpy8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5q2j54mI6Z+p5Zu95oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/lpoLkvZXotK3kubDmraPniYjnvo7lm73miqTnhactMjAyNi8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Zyo57q/6LSt5Lmw5oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDmraPniYjkuK3lm73miqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOecn+ato+eahOWKoOaLv+Wkp+aKpOeFpy8gaHR0cHM6Ly9id
 XlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw6Iux5Zu95Y6f54mI5oqk54WnLyBodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/lpoLkvZXlnKjlrrblkIjms5Xojrflj5bmraPniYjlvrflm73miqTnhacvIGh0dHBzOi8vYnV5cmVhbGN1cnJlbmN5LmNvbS9wcm9kdWN0L+i0reS5sOS4reWbveaKpOeFpy8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu95oqk54WnLyBodHRwczovL2dsb2JhbHRyYXZlbGRvY3MuY29tL3Byb2R1Y3Qv5Zyo57q/6LSt5Lmw55yf5YGH5oqk54WnLyBodHRwczovL3J1c2hteW5ld3Bhc3Nwb3J0LmNvbS9wcm9kdWN0L+i0reS5sOWKoOaLv+Wkp+WxheeVmeiuuOWPry8gaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Yqg5ou/5aSn5bGF55WZ6K645Y+vLyDpgq7nrrHvvJphdXRoZW50aWNub3RlczVAZ21haWwuY29tIOW+ruS/oe+8mlNjb3R0Ym93ZXJzNDQ=?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MFRTTBXBJ2JYSDC3K4STKXUNOMFMYTKU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.69 / 15.00];
	SPAM_FLAG(5.00)[];
	LONG_SUBJ(3.00)[1503];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS(0.00)[m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER(0.00)[chenshentu92@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,rushmynewpassport.com:url,linaro.org:email,globaltraveldocs.com:url,buyrealcurrency.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E0DF6996FD
X-Spam: Yes

6LSt5Lmw55yf5YGH5oqk54Wn77yI5b6u5L+h77yaU2NvdHRib3dlcnM0NO+8iei0reS5sOmpvump
tuaJp+eFp++8jOeUs+ivt+aKpOeFp++8jOi0reS5sOecn+ato+eahOiLseWbveaKpOeFp++8jOWc
qOe6v+i0reS5sOaWsOWKoOWdoeaKpOeFp++8jOi0reS5sOaXpeacrOaKpOeFp++8jOi0reS5sOa+
s+Wkp+WIqeS6muaKpOeFp++8jOi0reS5sOazsOWbveaKpOeFp++8jOi0reS5sOmYv+iBlOmFi+aK
pOeFp++8jOi0reS5sOWKoOaLv+Wkp+aKpOeFp++8jOi0reS5sOi2iuWNl+aKpOeFp++8jCDliqDm
i7/lpKflsYXnlZnorrjlj68sIChXaGF0c0FwcCA6ICs0OSAxNTc1IDM3NTY5NzQpIOi0reS5sOmp
rOadpeilv+S6muaKpOeFp++8jOWHuuWUruWBh+aKpOeFp++8jOWcqOWTqumHjOWcqOe6v+i0reS5
sOe+juWbveaKpOeFp++8jOaIkeWmguS9leiOt+W+l+aKpOeFp++8iOW+ruS/oe+8mlNjb3R0Ym93
ZXJzNDTvvInotK3kubDpppnmuK/miqTnhafnmoTlgYfmiavmj4/ku7bvvIzlnKjnur/otK3kubDm
iqTnhafvvIzlv6vpgJ/ku47lrrbph4zlnKjnur/otK3kubDmiqTnhafvvIzmiJHlj6/ku6XlnKjn
ur/lip7nkIbnvo7lm73miqTnhaflkJfvvIzotK3kubDmiqTnhafpnIDopoHlpJrplb/ml7bpl7Tv
vIznvo7lm73miqTnhaflpJrlsJHpkrHvvIzlpoLkvZXojrflvpfmiqTnhafvvIzojrflvpfnvo7l
m73miqTnhafvvIzlnKjlk6rph4zlj6/ku6XojrflvpfmiJHpmYTov5HnmoTmiqTnhafvvIzotK3k
ubDnnJ/mraPnmoTnlJ/niannibnlvoHmiqTnhafvvIznq4vljbPnlLPor7fmiqTnhafvvIzotK3k
ubDlpJbkuqTmiqTnhafvvIzlnKjkuK3lm73otK3kubDnvo7lm73miqTnhafvvIzlnKjnur/otK3k
ubDnvo7lm73miqTnhafvvIzvvIjlvq7kv6HvvJpTY290dGJvd2VyczQ077yJ5Zyo57q/6LSt5Lmw
6Iqs5YWw5oqk54Wn77yM5Zyo57q/6LSt5Lmw5b635Zu95oqk54Wn77yM6LSt5Lmw5paw5Zyo57q/
6LSt5Lmw5paw6KW/5YWw5oqk54Wn44CB5Zyo57q/6LSt5Lmw54ix5bCU5YWw5oqk54Wn44CB5Zyo
57q/6LSt5Lmw5Li56bqm5oqk54Wn44CB5Zyo57q/6LSt5Lmw6JGh6JCE54mZ5oqk54Wn44CB5Zyo
57q/6LSt5Lmw6JGh6JCE54mZ5oqk54Wn44CB5Zyo57q/6LSt5Lmw5Y2i5qOu5aCh5oqk54Wn44CB
5Zyo57q/6LSt5Lmw5Zyf6ICz5YW25oqk54Wn44CB5Zyo57q/6LSt5Lmw6I235YWw5oqk54Wn44CB
5Zyo57q/6LSt5Lmw5oyq5aiB5oqk54Wn44CB5Zyo57q/6LSt5Lmw5rOi5YWw5oqk54Wn44CB5Zyo
57q/6LSt5Lmw5biM6IWK5oqk54Wn44CB5Zyo57q/6LSt5Lmw5YyI54mZ5Yip5oqk54Wn44CB5Zyo
57q/6LSt5Lmw6KW/54+t54mZ5oqk54Wn44CB5Zyo57q/6LSt5Lmw5pm65Yip5oqk54Wn44CB5Zyo
57q/6LSt5Lmw5YWL572X5Zyw5Lqa5oqk54Wn44CB5Zyo57q/6LSt5Lmw5ZOl5pav6L6+6buO5Yqg
5oqk54WnICAoV2hhdHNBcHAgOiArNDkgMTU3NSAzNzU2OTc0KSANCg0KaHR0cHM6Ly9idXlyZWFs
Y3VycmVuY3kuY29tL3Byb2R1Y3Qv5Yqg5ou/5aSn5bGF55WZ6K645Y+vLw0KaHR0cHM6Ly9idXly
ZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu5YGH576O5Zu95oqk54WnLw0KaHR0
cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw576O5Zu96am+6am25omn54Wn
Lw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt5Lmw5q2j5a6X576O5Zu9
57u/5Y2hLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv572R5LiK5Ye65ZSu
5YGH576O5Zu95oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt
5Lmw5Lit5Zu95oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv5Zyo
57q/6LSt5Lmw5oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1Y3Qv6LSt
5Lmw5q2j54mI6Z+p5Zu95oqk54WnLw0KaHR0cHM6Ly9idXlyZWFsY3VycmVuY3kuY29tL3Byb2R1
Y3Qv5aaC5L2V6LSt5Lmw5q2j54mI576O5Zu95oqk54WnLTIwMjYvDQpodHRwczovL2J1eXJlYWxj
dXJyZW5jeS5jb20vcHJvZHVjdC/lnKjnur/otK3kubDmiqTnhacvDQpodHRwczovL2J1eXJlYWxj
dXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDmraPniYjkuK3lm73miqTnhacvDQpodHRwczovL2J1
eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDnnJ/mraPnmoTliqDmi7/lpKfmiqTnhacv
DQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/otK3kubDoi7Hlm73ljp/niYjm
iqTnhacvDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/lpoLkvZXlnKjlrrbl
kIjms5Xojrflj5bmraPniYjlvrflm73miqTnhacvDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5j
b20vcHJvZHVjdC/otK3kubDkuK3lm73miqTnhacvDQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5j
b20vcHJvZHVjdC/nvZHkuIrlh7rllK7lgYfnvo7lm73miqTnhacvDQpodHRwczovL2dsb2JhbHRy
YXZlbGRvY3MuY29tL3Byb2R1Y3Qv5Zyo57q/6LSt5Lmw55yf5YGH5oqk54WnLw0KaHR0cHM6Ly9y
dXNobXluZXdwYXNzcG9ydC5jb20vcHJvZHVjdC/otK3kubDliqDmi7/lpKflsYXnlZnorrjlj68v
DQpodHRwczovL2J1eXJlYWxjdXJyZW5jeS5jb20vcHJvZHVjdC/liqDmi7/lpKflsYXnlZnorrjl
j68vDQoNCumCrueuse+8mmF1dGhlbnRpY25vdGVzNUBnbWFpbC5jb20NCuW+ruS/oe+8mlNjb3R0
Ym93ZXJzNDQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
