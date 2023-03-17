Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE56C4301
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:21:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D68D44796
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:21:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 7FB8F3E8AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:22:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Sc2dZ7hm;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 20D2062227;
	Fri, 17 Mar 2023 08:22:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE92C433D2;
	Fri, 17 Mar 2023 08:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041345;
	bh=g04ZINvTEUjQva4N99+CPauyQdfUwEB0MhvaHIAapKs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sc2dZ7hmNkJXZcLAH4xdxUhtozrQARLpG00GRVEo8lrR/265Zwy+QVjRBN0WlDl1Z
	 5b83rLlgcL5FqU0BF5yn8ker+hLM6JH6rr1ltl1B1b4lNxjCCpa9m5I6gvJXLWHOg5
	 SseUWNOX92/4i3VazKURF9Oou5Odhqjpk3tIruCH5a47qwdhBzFOza7zMtSD8fsvle
	 wDAgg5UGRjhQLa7j7LmEsKCaueoTsA33oz/6dlh4EZtjV0K2XogJoze8evjemc2cMm
	 apqkoKz0MMtvvNOj9M6kER2y0z80ZQrFMM1mcKphlixj3IXN8hsAJ5i/eqjSI+S0W3
	 fVeUtc21SSyEw==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Mar 2023 08:16:44 +0000
Message-Id: <20230317081718.2650744-4-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230317081718.2650744-1-lee@kernel.org>
References: <20230317081718.2650744-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7FB8F3E8AA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:email];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JLEZB4ZTXRYL46VRBW2GWGOGOY5IBWDL
X-Message-ID-Hash: JLEZB4ZTXRYL46VRBW2GWGOGOY5IBWDL
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:20:31 +0000
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/37] drm/amd/amdgpu/amdgpu_device: Provide missing kerneldoc entry for 'reset_context'
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLEZB4ZTXRYL46VRBW2GWGOGOY5IBWDL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6NTE1MjoNCiAgIHdhcm5pbmc6
IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3Jlc2V0X2NvbnRleHQnIG5vdCBkZXNjcmli
ZWQgaW4gJ2FtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXInDQoNCkNjOiBBbGV4IERldWNoZXIgPGFs
ZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQpDYzogIlBhbiwgWGluaHVpIiA8WGluaHVpLlBhbkBhbWQuY29t
Pg0KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+DQpDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RldmljZS5jIHwgMSArDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMNCmluZGV4IGQ0NTE5ZmJk
NTI2ZjIuLmVmMGIyNzg3Nzk2ZGEgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZGV2aWNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kZXZpY2UuYw0KQEAgLTUxNDUsNiArNTE0NSw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBh
bWRncHVfZGV2aWNlX3N0b3BfcGVuZGluZ19yZXNldHMoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXYpDQogICoNCiAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyDQogICogQGpvYjogd2hp
Y2ggam9iIHRyaWdnZXIgaGFuZw0KKyAqIEByZXNldF9jb250ZXh0OiBhbWRncHUgcmVzZXQgY29u
dGV4dCBwb2ludGVyDQogICoNCiAgKiBBdHRlbXB0IHRvIHJlc2V0IHRoZSBHUFUgaWYgaXQgaGFz
IGh1bmcgKGFsbCBhc2ljcykuDQogICogQXR0ZW1wdCB0byBkbyBzb2Z0LXJlc2V0IG9yIGZ1bGwt
cmVzZXQgYW5kIHJlaW5pdGlhbGl6ZSBBc2ljDQotLSANCjIuNDAuMC5yYzEuMjg0Lmc4ODI1NGQ1
MWM1LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
