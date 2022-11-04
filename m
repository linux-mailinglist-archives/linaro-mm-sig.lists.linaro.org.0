Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2467619058
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 06:49:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F4FF3F5C7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 05:49:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id BB6143EF38
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 05:48:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4BB40620C2;
	Fri,  4 Nov 2022 05:48:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD008C4314A;
	Fri,  4 Nov 2022 05:48:47 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
	(envelope-from <rostedt@goodmis.org>)
	id 1oqpZq-00714V-0o;
	Fri, 04 Nov 2022 01:49:14 -0400
Message-ID: <20221104054914.085569465@goodmis.org>
User-Agent: quilt/0.66
Date: Fri, 04 Nov 2022 01:41:05 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
References: <20221104054053.431922658@goodmis.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: BB6143EF38
X-Spamd-Result: default: False [-1.95 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_BAD_CTE_7BIT(1.05)[7bit,utf8];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[Cc8=3E=goodmis.org=rostedt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=@kernel.org]
Message-ID-Hash: PU6VYKVUEV3AEPILBUYCLVOPKEND6OPA
X-Message-ID-Hash: PU6VYKVUEV3AEPILBUYCLVOPKEND6OPA
X-MailFrom: SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC][PATCH v3 12/33] timers: dma-buf: Use timer_shutdown_sync() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PU6VYKVUEV3AEPILBUYCLVOPKEND6OPA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogIlN0ZXZlbiBSb3N0ZWR0IChHb29nbGUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4NCg0K
QmVmb3JlIGEgdGltZXIgaXMgZnJlZWQsIHRpbWVyX3NodXRkb3duX3N5bmMoKSBtdXN0IGJlIGNh
bGxlZC4NCg0KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwNDA3MTYxNzQ1
LjdkNjc1NGIzQGdhbmRhbGYubG9jYWwuaG9tZS8NCg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZw0KU2lnbmVkLW9mZi1ieTogU3RldmVuIFJvc3RlZHQgKEdvb2dsZSkgPHJvc3RlZHRAZ29v
ZG1pcy5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCAyICstDQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLmMNCmluZGV4IGZiNmUwYTZhZTJjOS4uNWQzZTdiNTAzNTAxIDEwMDY0NA0KLS0t
IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLmMNCkBAIC00MTIsNyArNDEyLDcgQEAgc3RhdGljIGludCB0ZXN0X3dhaXRf
dGltZW91dCh2b2lkICphcmcpDQogDQogCWVyciA9IDA7DQogZXJyX2ZyZWU6DQotCWRlbF90aW1l
cl9zeW5jKCZ3dC50aW1lcik7DQorCXRpbWVyX3NodXRkb3duX3N5bmMoJnd0LnRpbWVyKTsNCiAJ
ZGVzdHJveV90aW1lcl9vbl9zdGFjaygmd3QudGltZXIpOw0KIAlkbWFfZmVuY2Vfc2lnbmFsKHd0
LmYpOw0KIAlkbWFfZmVuY2VfcHV0KHd0LmYpOw0KLS0gDQoyLjM1LjENCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
