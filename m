Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8063960FBAA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 17:20:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EF7D3F59F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 15:20:37 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id AB3583F4D7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 15:20:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=KBNb=24=goodmis.org=rostedt@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=KBNb=24=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 98B7FB826D8;
	Thu, 27 Oct 2022 15:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40AADC433C1;
	Thu, 27 Oct 2022 15:20:16 +0000 (UTC)
Date: Thu, 27 Oct 2022 11:20:30 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Message-ID: <20221027112030.24f1a9b7@gandalf.local.home>
In-Reply-To: <20221027150927.371916000@goodmis.org>
References: <20221027150525.753064657@goodmis.org>
	<20221027150927.371916000@goodmis.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: AB3583F4D7
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=KBNb=24=goodmis.org=rostedt@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=KBNb=24=goodmis.org=rostedt@kernel.org];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: IYQO3K4ZMYK5A5E7ED3Q75JNTAIWTWUS
X-Message-ID-Hash: IYQO3K4ZMYK5A5E7ED3Q75JNTAIWTWUS
X-MailFrom: SRS0=KBNb=24=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v2 12/31] timers: dma-buf: Use del_timer_shutdown() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IYQO3K4ZMYK5A5E7ED3Q75JNTAIWTWUS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Ww0KICBxdWlsdCBtYWlsIC0tc2VuZCBzdGlsbCBjYW4ndCBoYW5kbGUgdW5pY29kZSBjaGFyYWN0
ZXJzLg0KICAgIEhlcmUncyB0aGUgcGF0Y2ggYWdhaW4NCl0NCg0KRnJvbTogIlN0ZXZlbiBSb3N0
ZWR0IChHb29nbGUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4NCg0KQmVmb3JlIGEgdGltZXIgaXMg
ZnJlZWQsIGRlbF90aW1lcl9zaHV0ZG93bigpIG11c3QgYmUgY2FsbGVkLg0KDQpMaW5rOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjA0MDcxNjE3NDUuN2Q2NzU0YjNAZ2FuZGFsZi5s
b2NhbC5ob21lLw0KDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4N
CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBs
aW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5
OiBTdGV2ZW4gUm9zdGVkdCAoR29vZ2xlKSA8cm9zdGVkdEBnb29kbWlzLm9yZz4NCi0tLQ0KIGRy
aXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9zdC1kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KaW5kZXgg
ZmI2ZTBhNmFlMmM5Li5jNjdiNzAyMDViNmYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KQEAg
LTQxMiw3ICs0MTIsNyBAQCBzdGF0aWMgaW50IHRlc3Rfd2FpdF90aW1lb3V0KHZvaWQgKmFyZykN
CiANCiAJZXJyID0gMDsNCiBlcnJfZnJlZToNCi0JZGVsX3RpbWVyX3N5bmMoJnd0LnRpbWVyKTsN
CisJZGVsX3RpbWVyX3NodXRkb3duKCZ3dC50aW1lcik7DQogCWRlc3Ryb3lfdGltZXJfb25fc3Rh
Y2soJnd0LnRpbWVyKTsNCiAJZG1hX2ZlbmNlX3NpZ25hbCh3dC5mKTsNCiAJZG1hX2ZlbmNlX3B1
dCh3dC5mKTsNCi0tIA0KMi4zNS4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
