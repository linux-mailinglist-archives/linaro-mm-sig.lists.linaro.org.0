Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D160D7292B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 10:18:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6564413DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  9 Jun 2023 08:18:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 451A83EF3A
	for <linaro-mm-sig@lists.linaro.org>; Fri,  9 Jun 2023 08:18:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=cVmvOWAK;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E68C9654B0;
	Fri,  9 Jun 2023 08:18:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C945C433D2;
	Fri,  9 Jun 2023 08:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686298702;
	bh=bV0AjXaMBOwcPgHZlva/QwT1Ny6xhO6iUTwyI835e2A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cVmvOWAKHoSKy8W4/gtTWa2vmeBm71dB7jn1ZBGFZkt9iV5nxTuJ1hFNnfsYsiS/g
	 oD9ijSARaf23ncovhmQiYacLkhDfx/veUHaqtLYH0J705hOluSpXHCySiObjtwS5eX
	 9bMgQlCjF2E3Ejj6z8N/TtXoZ94MAJxZjXdBkMDjkXJSWTaJfX0k4JlXsDymLUn996
	 foYeDcypwz1yMgB3H0zt/Ku0Avq17EhTia6d/IMzByP+GP1JCe5xE9uumkIMkHpWUm
	 yTOT6xnI6YKKtz0H8QEan94neI4B736hA/SE97cMpEDLXyUSzChc9X4qPLE1AYj/ly
	 1rGC7mqgyIB9g==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri,  9 Jun 2023 09:17:18 +0100
Message-ID: <20230609081732.3842341-16-lee@kernel.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
In-Reply-To: <20230609081732.3842341-1-lee@kernel.org>
References: <20230609081732.3842341-1-lee@kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 451A83EF3A
X-Spamd-Bar: -------
Message-ID-Hash: LNWSPHN65WRRDZPMOBGDXBU7DWTWDS5B
X-Message-ID-Hash: LNWSPHN65WRRDZPMOBGDXBU7DWTWDS5B
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Stanley Yang <Stanley.Yang@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RESEND 15/15] drm/amd/amdgpu/sdma_v6_0: Demote a bunch of half-completed function headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LNWSPHN65WRRDZPMOBGDXBU7DWTWDS5B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoyNDg6IHdhcm5pbmc6IEZ1bmN0aW9u
IHBhcmFtZXRlciBvciBtZW1iZXIgJ2pvYicgbm90IGRlc2NyaWJlZCBpbiAnc2RtYV92Nl8wX3Jp
bmdfZW1pdF9pYicNCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoyNDg6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2ZsYWdzJyBub3QgZGVzY3Jp
YmVkIGluICdzZG1hX3Y2XzBfcmluZ19lbWl0X2liJw0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjZfMC5jOjk0NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJl
ciAndGltZW91dCcgbm90IGRlc2NyaWJlZCBpbiAnc2RtYV92Nl8wX3JpbmdfdGVzdF9pYicNCiBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoxMTI0OiB3YXJuaW5nOiBGdW5j
dGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdyaW5nJyBub3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2
XzBfcmluZ19wYWRfaWInDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmM6
MTE3NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAndm1pZCcgbm90IGRl
c2NyaWJlZCBpbiAnc2RtYV92Nl8wX3JpbmdfZW1pdF92bV9mbHVzaCcNCiBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYzoxMTc1OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0
ZXIgb3IgbWVtYmVyICdwZF9hZGRyJyBub3QgZGVzY3JpYmVkIGluICdzZG1hX3Y2XzBfcmluZ19l
bWl0X3ZtX2ZsdXNoJw0KDQpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQu
Y29tPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Q2M6ICJQYW4sIFhpbmh1aSIgPFhpbmh1aS5QYW5AYW1kLmNvbT4NCkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4N
CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IFN0YW5sZXkg
WWFuZyA8U3RhbmxleS5ZYW5nQGFtZC5jb20+DQpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpT
aWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMgfCA4ICsrKystLS0tDQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjZfMC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvc2RtYV92Nl8wLmMNCmluZGV4IDNiMDNkZGE4NTRmZGMuLjhjZDdhYmU3NGU2YzQgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMNCkBAIC0yMzMsNyArMjMzLDcg
QEAgc3RhdGljIHZvaWQgc2RtYV92Nl8wX3JpbmdfaW5zZXJ0X25vcChzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcsIHVpbnQzMl90IGNvdW50KQ0KIAkJCWFtZGdwdV9yaW5nX3dyaXRlKHJpbmcsIHJp
bmctPmZ1bmNzLT5ub3ApOw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNkbWFfdjZfMF9yaW5nX2Vt
aXRfaWIgLSBTY2hlZHVsZSBhbiBJQiBvbiB0aGUgRE1BIGVuZ2luZQ0KICAqDQogICogQHJpbmc6
IGFtZGdwdSByaW5nIHBvaW50ZXINCkBAIC05MzYsNyArOTM2LDcgQEAgc3RhdGljIGludCBzZG1h
X3Y2XzBfcmluZ190ZXN0X3Jpbmcoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQ0KIAlyZXR1cm4g
cjsNCiB9DQogDQotLyoqDQorLyoNCiAgKiBzZG1hX3Y2XzBfcmluZ190ZXN0X2liIC0gdGVzdCBh
biBJQiBvbiB0aGUgRE1BIGVuZ2luZQ0KICAqDQogICogQHJpbmc6IGFtZGdwdV9yaW5nIHN0cnVj
dHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24NCkBAIC0xMTE4LDcgKzExMTgsNyBAQCBzdGF0
aWMgdm9pZCBzZG1hX3Y2XzBfdm1fc2V0X3B0ZV9wZGUoc3RydWN0IGFtZGdwdV9pYiAqaWIsDQog
CWliLT5wdHJbaWItPmxlbmd0aF9kdysrXSA9IGNvdW50IC0gMTsgLyogbnVtYmVyIG9mIGVudHJp
ZXMgKi8NCiB9DQogDQotLyoqDQorLyoNCiAgKiBzZG1hX3Y2XzBfcmluZ19wYWRfaWIgLSBwYWQg
dGhlIElCDQogICogQGliOiBpbmRpcmVjdCBidWZmZXIgdG8gZmlsbCB3aXRoIHBhZGRpbmcNCiAg
KiBAcmluZzogYW1kZ3B1IHJpbmcgcG9pbnRlcg0KQEAgLTExNjcsNyArMTE2Nyw3IEBAIHN0YXRp
YyB2b2lkIHNkbWFfdjZfMF9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYyhzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcpDQogCQkJICBTRE1BX1BLVF9QT0xMX1JFR01FTV9EVzVfSU5URVJWQUwoNCkpOyAv
KiByZXRyeSBjb3VudCwgcG9sbCBpbnRlcnZhbCAqLw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNk
bWFfdjZfMF9yaW5nX2VtaXRfdm1fZmx1c2ggLSB2bSBmbHVzaCB1c2luZyBzRE1BDQogICoNCiAg
KiBAcmluZzogYW1kZ3B1X3JpbmcgcG9pbnRlcg0KLS0gDQoyLjQxLjAuMTYyLmdmYWZkZGIwYWY5
LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
