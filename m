Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA86C4308
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:22:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A9C93F48A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:22:32 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 8168C3E8AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 08:22:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=aH9baG6Q;
	spf=pass (lists.linaro.org: domain of lee@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=lee@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 87368B824FB;
	Fri, 17 Mar 2023 08:22:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04883C433EF;
	Fri, 17 Mar 2023 08:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679041372;
	bh=2fN05X8Hk+oG8PadKtWMVED3+Ll+rVeU4UKuOLTmoos=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aH9baG6QVrmLtZIdI8tXrP/9/h9JdO4iRzL9ptVItpVzfubVeDhu64SQG34nnfShh
	 IW3/aqBd7XXQlSDX+Z+ElfX4mUconWVPK14ovcqHvE16r92hReuGKMYXkEPtTv1Ozy
	 T6kCDLNPrKDEg9NnUdHxVm1AW6wGDSuo+DbnTDWHzEXIGhbBo7TJ5uciA/tCxKpkYd
	 8yXwFCJOMUrGt4mWlNxwiwYMTsNeHOVIchI8L9G6ARzcPcLbnWttjGbbn9k22GkLTm
	 +J6qwBY4Ydw15V3Po/I75RCWYk9/4ZrCFfwP+6F6lVW1OqtEH9dol2w58CAH2hwjuQ
	 4DFphXR+tsYCA==
From: Lee Jones <lee@kernel.org>
To: lee@kernel.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Mar 2023 08:16:55 +0000
Message-Id: <20230317081718.2650744-15-lee@kernel.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230317081718.2650744-1-lee@kernel.org>
References: <20230317081718.2650744-1-lee@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8168C3E8AA
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org:c];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:email,ffwll.ch:email,lists.freedesktop.org:email,amd.com:email,ams.source.kernel.org:rdns,ams.source.kernel.org:helo];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lee@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3LMKLVPHKG3UXIJZC5HDVGH2P3NFMA2D
X-Message-ID-Hash: 3LMKLVPHKG3UXIJZC5HDVGH2P3NFMA2D
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:21:07 +0000
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 14/37] drm/amd/amdgpu/amdgpu_vm_pt: Supply description for amdgpu_vm_pt_free_dfs()'s unlocked param
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3LMKLVPHKG3UXIJZC5HDVGH2P3NFMA2D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6DQoNCiBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm1fcHQuYzo2ODM6IHdhcm5pbmc6IEZ1bmN0
aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3VubG9ja2VkJyBub3QgZGVzY3JpYmVkIGluICdhbWRn
cHVfdm1fcHRfZnJlZV9kZnMnDQoNCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVy
QGFtZC5jb20+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQpDYzogIlBhbiwgWGluaHVpIiA8WGluaHVpLlBhbkBhbWQuY29tPg0KQ2M6IERhdmlkIEFp
cmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogYW1k
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnDQpTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwu
b3JnPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMgfCAx
ICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV9wdC5jIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMNCmluZGV4IDAxZTQyYmRkOGU0ZTguLmRmNjNkYzNiY2Ex
OGMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdm1fcHQu
Yw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMNCkBAIC02
NzMsNiArNjczLDcgQEAgdm9pZCBhbWRncHVfdm1fcHRfZnJlZV93b3JrKHN0cnVjdCB3b3JrX3N0
cnVjdCAqd29yaykNCiAgKiBAYWRldjogYW1kZ3B1IGRldmljZSBzdHJ1Y3R1cmUNCiAgKiBAdm06
IGFtZGdwdSB2bSBzdHJ1Y3R1cmUNCiAgKiBAc3RhcnQ6IG9wdGlvbmFsIGN1cnNvciB3aGVyZSB0
byBzdGFydCBmcmVlaW5nIFBEcy9QVHMNCisgKiBAdW5sb2NrZWQ6IHZtIHJlc3YgdW5sb2NrIHN0
YXR1cw0KICAqDQogICogRnJlZSB0aGUgcGFnZSBkaXJlY3Rvcnkgb3IgcGFnZSB0YWJsZSBsZXZl
bCBhbmQgYWxsIHN1YiBsZXZlbHMuDQogICovDQotLSANCjIuNDAuMC5yYzEuMjg0Lmc4ODI1NGQ1
MWM1LWdvb2cNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
