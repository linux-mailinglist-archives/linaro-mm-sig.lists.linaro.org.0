Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD8D6D1C4A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 11:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46F313E975
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Mar 2023 09:28:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 10CCC3F598
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Mar 2023 09:27:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=dsTJ8rRV;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AE4616265A;
	Fri, 31 Mar 2023 09:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68DD6C433D2;
	Fri, 31 Mar 2023 09:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680254827;
	bh=h8C/nCvQ95GrVt3vhY71TCmgTeCG4/uxqnWpxM7dCvc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dsTJ8rRVglkyMZumINEy8WnEYodYuNEhZ7bk1k65j6hRSt6A+H6HSIvwtd10Q7Pew
	 mDw2gtHjx/Wcbcjzbkz+E4al5QovbvJmBTGuowMkfOeT3uswymaaryDuad3rt3skik
	 5V5Bbv3qYCq7vivephtUFBGWG86wnCgaWebo/0f/p2rqGeM9esEDofWzKN7G+RpviI
	 uGVW/qs5y+ADztJb7OtXuw83KGVnks7D3LZENOEVzA8BLUVYaq3VNB0jjOaOb5xHKz
	 KUcG4WeYIOei20QDLzRmfFPg48kD4AHMaklv91+4SWntbuAwafm2Tk9Hkn2rRjV4B2
	 yMfi7F7+H4KBw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org
Date: Fri, 31 Mar 2023 10:26:06 +0100
Message-Id: <20230331092607.700644-19-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230331092607.700644-1-lee@kernel.org>
References: <20230331092607.700644-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 10CCC3F598
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: CSMEDKUJAPRLJ27RNK3WSN4V3LBJUJGC
X-Message-ID-Hash: CSMEDKUJAPRLJ27RNK3WSN4V3LBJUJGC
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Stanley Yang <Stanley.Yang@amd.com>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 18/19] drm/amd/amdgpu/sdma_v6_0: Demote a bunch of half-completed function headers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSMEDKUJAPRLJ27RNK3WSN4V3LBJUJGC/>
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
bWRncHUvc2RtYV92Nl8wLmMNCmluZGV4IDQwZTZiMjJkYWEyMjYuLmVmZWE0ZWYzMGE3ODcgMTAw
NjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y2XzAuYw0KKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92Nl8wLmMNCkBAIC0yMzMsNyArMjMzLDcg
QEAgc3RhdGljIHZvaWQgc2RtYV92Nl8wX3JpbmdfaW5zZXJ0X25vcChzdHJ1Y3QgYW1kZ3B1X3Jp
bmcgKnJpbmcsIHVpbnQzMl90IGNvdW50KQ0KIAkJCWFtZGdwdV9yaW5nX3dyaXRlKHJpbmcsIHJp
bmctPmZ1bmNzLT5ub3ApOw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNkbWFfdjZfMF9yaW5nX2Vt
aXRfaWIgLSBTY2hlZHVsZSBhbiBJQiBvbiB0aGUgRE1BIGVuZ2luZQ0KICAqDQogICogQHJpbmc6
IGFtZGdwdSByaW5nIHBvaW50ZXINCkBAIC05MzMsNyArOTMzLDcgQEAgc3RhdGljIGludCBzZG1h
X3Y2XzBfcmluZ190ZXN0X3Jpbmcoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQ0KIAlyZXR1cm4g
cjsNCiB9DQogDQotLyoqDQorLyoNCiAgKiBzZG1hX3Y2XzBfcmluZ190ZXN0X2liIC0gdGVzdCBh
biBJQiBvbiB0aGUgRE1BIGVuZ2luZQ0KICAqDQogICogQHJpbmc6IGFtZGdwdV9yaW5nIHN0cnVj
dHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24NCkBAIC0xMTE0LDcgKzExMTQsNyBAQCBzdGF0
aWMgdm9pZCBzZG1hX3Y2XzBfdm1fc2V0X3B0ZV9wZGUoc3RydWN0IGFtZGdwdV9pYiAqaWIsDQog
CWliLT5wdHJbaWItPmxlbmd0aF9kdysrXSA9IGNvdW50IC0gMTsgLyogbnVtYmVyIG9mIGVudHJp
ZXMgKi8NCiB9DQogDQotLyoqDQorLyoNCiAgKiBzZG1hX3Y2XzBfcmluZ19wYWRfaWIgLSBwYWQg
dGhlIElCDQogICogQGliOiBpbmRpcmVjdCBidWZmZXIgdG8gZmlsbCB3aXRoIHBhZGRpbmcNCiAg
Kg0KQEAgLTExNjIsNyArMTE2Miw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjZfMF9yaW5nX2VtaXRf
cGlwZWxpbmVfc3luYyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpDQogCQkJICBTRE1BX1BLVF9Q
T0xMX1JFR01FTV9EVzVfSU5URVJWQUwoNCkpOyAvKiByZXRyeSBjb3VudCwgcG9sbCBpbnRlcnZh
bCAqLw0KIH0NCiANCi0vKioNCisvKg0KICAqIHNkbWFfdjZfMF9yaW5nX2VtaXRfdm1fZmx1c2gg
LSB2bSBmbHVzaCB1c2luZyBzRE1BDQogICoNCiAgKiBAcmluZzogYW1kZ3B1X3JpbmcgcG9pbnRl
cg0KLS0gDQoyLjQwLjAuMzQ4LmdmOTM4YjA5MzY2LWdvb2cNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
