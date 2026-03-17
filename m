Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJLKK8BpuWmZDwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 15:48:32 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4152E2AC48D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 15:48:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D9DA3F767
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Mar 2026 14:48:31 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8084B3F767
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 14:48:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=LsWky3lY;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43b48ac2727so1229232f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 07:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773758907; x=1774363707; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M8gYAozgCWDOAMG74D+3BY6ig21lwzb2NHNogEZp2oE=;
        b=LsWky3lYWsAMN0bKeZ5/WVNqJlSRRfR/2ULeZ/U4KjzfE88IpPEbKaCxrQv7FsIOf3
         RbOfjhTMUupGGbx80heS/rUe9Vg753o4pGJ8HViS99wF+0RmVdhyvIAISdftWavbBMSn
         /lPg6Jz1DrHWZrLcvgy98Rr7bT7ZlLXb60OPdp+eDb1Ijn5wuGPtdcdWF1tVL1WVDs+4
         KnVdn+Uq4XVhnRNuQbyx+yrrZ6lEZrsOk/yW3XjX7bZ3lUJ/wj1gacqFjVG+9LUWFTGa
         l+jTsyVaxjCz00+kGb6HQV/megw73oa1iiMbSrOEHOR5lIvIpbH34PrYhdKzgKuk/uxa
         Rx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773758907; x=1774363707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8gYAozgCWDOAMG74D+3BY6ig21lwzb2NHNogEZp2oE=;
        b=IcT0+M+TD3ISONVBH7McRe0Vl0gWcen7Z12j1ribHjRWXIAeaj1x+n8+wYIgf+cFUI
         PMIJplhIwpBa7Nek1VHWTdrGUbF2+rU+FCdenp6X+w1JRO8XuURa32jB7lXT/b800Hx5
         aIhVyt3ZLN6epKGI0EVjKq5tqO0ef190W8ly4WoTjZdm5WV6B0a7uUt0F1WA1MNuj2hI
         LLYChXhKmiqDcG5qFC9TsFv2eBNOfqnBKlmmD1PA252kqa6hl6LQTb909sY+ziNRIZ+d
         5GNXrG9FtCyDjVD2gIJwqGr2lef6umkxEMQOramnbnFPSRQ3Jm9DR10g5mn0kYQVq1Xu
         T1tA==
X-Forwarded-Encrypted: i=1; AJvYcCUlHV3ZQR7y25WrbrqaZqsslRX4wL867xtua+RuIzjQ+AOkdkFyHapF6uMjg9gBA6OVRwUhVXBbpYqS6LPp@lists.linaro.org
X-Gm-Message-State: AOJu0YwyLVZ9abLJXv9oSCLaX59VFFU+xbzcotRIiF9aeWoU/VafFeoP
	EeLu+dlBXTYC0bb0KqrDD7UiqRdCUciYy1100Ev6xwibTjERrx94+Fbr
X-Gm-Gg: ATEYQzyYQo1bVNNXgzUAmcyK5mTNtDumAuXwYiKOIkw7K8kjRjmHYuRnPNLy0+VGfjx
	hZb1RF1LqqZg1FNW2UMos+Wi6NraAgtNKnNEANxQIZK8VjNf6zQF4gv6AomYlQ/ehx4ztL8hz51
	Y86IFt9S5fY7OcpeiCkqUWc40su6DWuXND8buVxNDhDCPRumFkYeuOCOJA+1xdoXMUvdIke6oN1
	Y1CkQhU8NvmJg4iBTNiNiSdUEEmdDRI+5JgHosZrVYavRoNHwP721jOnMm7J+RFbPCaTBqksuLV
	cTAJUfJgyr2IZ3lFbNEs+P+P94Ucd96ll/+7ebp8QgdRVrS33bULREnu6mvH6JHc8uoIYWxQi3X
	Cu/Vv+JQH2TLadIdKG6a3N52PMYvWTzAjQOavsHyH9ABqiTPGXgTOyUm+T9wH1Bl44Vg6B8tPXd
	ntAyGIh5b4ZNxXIZxUKVamPmHiB77rCN6/VBZCY1DmtyyPNQ==
X-Received: by 2002:a05:6000:2601:b0:43b:48e3:fbee with SMTP id ffacd0b85a97d-43b48e3fc39mr8977145f8f.37.1773758907211;
        Tue, 17 Mar 2026 07:48:27 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:1570:2300:d8a4:3e2d:eba7:95e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2186e3sm57302132f8f.26.2026.03.17.07.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:48:26 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	aliceryhl@google.com,
	boris.brezillon@collabora.com,
	gary@garyguo.net,
	lossin@kernel.org,
	daniel.almeida@collabora.com,
	joelagnelf@nvidia.com,
	sumit.semwal@linaro.org
Date: Tue, 17 Mar 2026 15:48:25 +0100
Message-ID: <20260317144825.2318-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: HEZMVIYTKNX6BAWCPJOGXC3WL3QURKTQ
X-Message-ID-Hash: HEZMVIYTKNX6BAWCPJOGXC3WL3QURKTQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/dma_fence: be more defensive in dma_fence_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HEZMVIYTKNX6BAWCPJOGXC3WL3QURKTQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.707];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 4152E2AC48D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SW4gY2FzZSBvZiBhIHJlZmNvdW50aW5nIGJ1ZyBkbWFfZmVuY2VfcmVsZWFzZSgpIGNhbiBiZSBj
YWxsZWQgYmVmb3JlIHRoZQ0KZmVuY2Ugd2FzIGV2ZW4gc2lnbmFsZWQuDQoNClByZXZpb3VzbHkg
dGhlIGRtYV9mZW5jZSBmcmFtZXdvcmsgdGhlbiBmb3JjZSBzaWduYWxlZCB0aGUgZmVuY2UgdG8g
bWFrZQ0Kc3VyZSB0byB1bmJsb2NrIHdhaXRlcnMsIGJ1dCB0aGF0IGNhbiBwb3RlbnRpYWxseSBs
ZWFkIHRvIHJhbmRvbSBtZW1vcnkNCmNvcnJ1cHRpb24gd2hlbiB0aGUgRE1BIG9wZXJhdGlvbiBj
b250aW51ZXMuIFNvIGJlIG1vcmUgZGVmZW5zaXZlIGhlcmUgYW5kDQpwaWNrIHRoZSBsZXNzZXIg
ZXZpbC4NCg0KSW5zdGVhZCBvZiBmb3JjZSBzaWduYWxpbmcgdGhlIGZlbmNlIHNldCBhbiBlcnJv
ciBjb2RlIG9uIHRoZSBmZW5jZSwNCnJlLWluaXRpYWxpemUgdGhlIHJlZmNvdW50IHRvIHNvbWV0
aGluZyBsYXJnZSBhbmQgdGFpbnQgdGhlIGtlcm5lbC4NCg0KVGhpcyB3aWxsIGxlYWsgbWVtb3J5
IGFuZCBldmVudHVhbGx5IGNhbiBjYXVzZSBhIGRlYWRsb2NrIHdoZW4gdGhlIGZlbmNlDQppcyBu
ZXZlciBzaWduYWxlZCwgYnV0IGF0IGxlYXN0IHdlIHdvbid0IHJ1biBpbnRvIGFuIHVzZSBhZnRl
ciBmcmVlIG9yDQpyYW5kb20gbWVtb3J5IGNvcnJ1cHRpb24uDQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDE4ICsrKysrKysrKysrKysrLS0tLQ0KIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpp
bmRleCAxODI2YmE3MzA5NGMuLjhiZjA3Njg1YTA1MyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQpAQCAt
NTkzLDE0ICs1OTMsMjQgQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3Jl
ZikNCiAJCS8qDQogCQkgKiBGYWlsZWQgdG8gc2lnbmFsIGJlZm9yZSByZWxlYXNlLCBsaWtlbHkg
YSByZWZjb3VudGluZyBpc3N1ZS4NCiAJCSAqDQotCQkgKiBUaGlzIHNob3VsZCBuZXZlciBoYXBw
ZW4sIGJ1dCBpZiBpdCBkb2VzIG1ha2Ugc3VyZSB0aGF0IHdlDQotCQkgKiBkb24ndCBsZWF2ZSBj
aGFpbnMgZGFuZ2xpbmcuIFdlIHNldCB0aGUgZXJyb3IgZmxhZyBmaXJzdA0KLQkJICogc28gdGhh
dCB0aGUgY2FsbGJhY2tzIGtub3cgdGhpcyBzaWduYWwgaXMgZHVlIHRvIGFuIGVycm9yLg0KKwkJ
ICogVGhpcyBzaG91bGQgbmV2ZXIgaGFwcGVuLCBidXQgaWYgdHJ5IHRvIGJlIGRlZmVuc2l2ZSBh
bmQgdGFrZQ0KKwkJICogdGhlIGxlc3NlciBldmlsLiBJbml0aWFsaXplIHRoZSByZWZjb3VudCB0
byBzb21ldGhpbmcgbGFyZ2UsDQorCQkgKiBidXQgbm90IHNvIGxhcmdlIHRoYXQgaXQgY2FuIG92
ZXJmbG93Lg0KKwkJICoNCisJCSAqIFRoYXQgd2lsbCBsZWFrIG1lbW9yeSBhbmQgY291bGQgZGVh
ZGxvY2sgaWYgdGhlIGZlbmNlIG5ldmVyDQorCQkgKiBzaWduYWxzLCBidXQgYXQgbGVhc3QgaXQg
ZG9lc24ndCBjYXVzZSBhbiB1c2UgYWZ0ZXIgZnJlZSBvcg0KKwkJICogcmFuZG9tIG1lbW9yeSBj
b3JydXB0aW9uLg0KKwkJICoNCisJCSAqIEFsc28gdGFpbnQgdGhlIGtlcm5lbCB0byBub3RlIHRo
YXQgaXQgaXMgcmF0aGVyIHVucmVsaWFibGUgdG8NCisJCSAqIGNvbnRpbnVlLg0KIAkJICovDQog
CQlkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQogCQlmZW5jZS0+ZXJyb3Ig
PSAtRURFQURMSzsNCi0JCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCisJCXJlZmNv
dW50X3NldCgmZmVuY2UtPnJlZmNvdW50LnJlZmNvdW50LCBJTlRfTUFYKTsNCiAJCWRtYV9mZW5j
ZV91bmxvY2tfaXJxcmVzdG9yZShmZW5jZSwgZmxhZ3MpOw0KKwkJcmN1X3JlYWRfdW5sb2NrKCk7
DQorCQlhZGRfdGFpbnQoVEFJTlRfU09GVExPQ0tVUCwgTE9DS0RFUF9TVElMTF9PSyk7DQorCQly
ZXR1cm47DQogCX0NCiANCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KLS0g
DQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
