Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA820677B27
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 13:38:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B31204437B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 12:38:56 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6B82F444B7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 12:38:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VjvRJ6+F;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id n7so10665661wrx.5
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 04:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i9phcZUG9auLg0bxKIvGJannf7qVnTDPudwSDuLifXA=;
        b=VjvRJ6+FeMUv4R98Vg80kPUFvb3t4rOGG2L0n/BvBl++NQHpd83iX83lHSHjkapSY7
         XoHf2p7Zkx1XKYXOZiynZSPQHkFrYePAj/+o7gd99Mkvpq5zSJZS3h4o4PqmFPWvkyJ3
         bFtMfzAzaJ1R6lm/QrkQrjYSE6e3/V0Ipo0VBu31QY57Gsr+9/3fNrCshzCg6k8uqBLb
         dr0F0hmzqTGEHp5Mq4azBOxxQZdWuaFQX5rENuH8WAXneVMoDOiKSnr58lQCNoE5zWxQ
         8zaVgsPligmMhL1FG5AtQ3RS/q+/4uNdWPNIDxpkA0Yzbm1Ta6BC3apzW5zPQHjxhRqc
         O6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9phcZUG9auLg0bxKIvGJannf7qVnTDPudwSDuLifXA=;
        b=QGtyMWYsFFDU9WYMZP8xrywFiVXqLyi5y6m8x3/NRtqXfQcYjur26oCwOas9hG8ORT
         fmkUGMjHVJBUxgF2GgKOxLVFk8OIp7LxlFRJrLc9IRyw/4kxYLL2UANsipRPTnZKctT1
         sRga/Xa1jT/fLkuEKJGyZSY6qgSDnHzxl//QYN92l+BaICiXfrt45zxC2ryzxnetcePm
         GcLmIazbCX7+W42dlnxFZES7v1n4/7QZZ4VGInMlYZ+40V4gxEjl0humPoX0N7sF6Png
         HLkKr9i1GNGY5RKYqq5/N2/quob225WD8YO7GWBROYkZ+fHQycGtPMU+gKw0OcN/qynj
         1Lcw==
X-Gm-Message-State: AFqh2koopzONeuEhAXqCLp/Onauaz2Q2y9lVEo7qmY3UnuJVkwdVun1P
	LvFajbPXWcKeqy2upGhZPbw=
X-Google-Smtp-Source: AMrXdXtI/73PQmywuJOsSpQBR5sFyd6fzwCCApfuw/gzzfctaoucA/oesi0FCWUDars87FaJ7ZSjLg==
X-Received: by 2002:adf:f689:0:b0:2bd:d095:5590 with SMTP id v9-20020adff689000000b002bdd0955590mr21375825wrp.14.1674477483513;
        Mon, 23 Jan 2023 04:38:03 -0800 (PST)
Received: from able.fritz.box (p5b0ea2e7.dip0.t-ipconnect.de. [91.14.162.231])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4284510wrz.92.2023.01.23.04.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:38:02 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	tfiga@chromium.org,
	sebastian.wick@redhat.com,
	hverkuil@xs4all.nl,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	benjamin.gaignard@collabora.com,
	lmark@codeaurora.org,
	labbott@redhat.com,
	Brian.Starkey@arm.com,
	jstultz@google.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Date: Mon, 23 Jan 2023 13:37:56 +0100
Message-Id: <20230123123756.401692-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123123756.401692-1-christian.koenig@amd.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B82F444B7
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[91.14.162.231:received,209.85.221.49:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.734];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,ideasonboard.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: IM6BZSIULWIAGDSFCG3F7RN33ICE52KO
X-Message-ID-Hash: IM6BZSIULWIAGDSFCG3F7RN33ICE52KO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IM6BZSIULWIAGDSFCG3F7RN33ICE52KO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXhwb3NlIGFuIGluZGljYXRvciB0byBsZXQgdXNlcnNwYWNlIGtub3cgZnJvbSB3aGljaCBkbWFf
aGVhcA0KdG8gYWxsb2NhdGUgZm9yIGJ1ZmZlcnMgb2YgdGhpcyBkZXZpY2UuDQoNClNpZ25lZC1v
ZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0K
IGRyaXZlcnMvbWVkaWEvdXNiL3V2Yy91dmNfZHJpdmVyLmMgfCAxMSArKysrKysrKysrKw0KIDEg
ZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jIGIvZHJpdmVycy9tZWRpYS91c2IvdXZjL3V2Y19kcml2
ZXIuYw0KaW5kZXggZTRiY2I1MDExMzYwLi5iMjQ3MDI2YjY4YzUgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL21lZGlhL3VzYi91dmMvdXZjX2RyaXZlci5jDQorKysgYi9kcml2ZXJzL21lZGlhL3VzYi91
dmMvdXZjX2RyaXZlci5jDQpAQCAtNyw2ICs3LDcgQEANCiAgKi8NCiANCiAjaW5jbHVkZSA8bGlu
dXgvYXRvbWljLmg+DQorI2luY2x1ZGUgPGxpbnV4L2RtYS1oZWFwLmg+DQogI2luY2x1ZGUgPGxp
bnV4L2dwaW8vY29uc3VtZXIuaD4NCiAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+DQogI2luY2x1
ZGUgPGxpbnV4L2xpc3QuaD4NCkBAIC0xOTA5LDYgKzE5MTAsOCBAQCBzdGF0aWMgdm9pZCB1dmNf
dW5yZWdpc3Rlcl92aWRlbyhzdHJ1Y3QgdXZjX2RldmljZSAqZGV2KQ0KIA0KIAlpZiAoZGV2LT52
ZGV2LmRldikNCiAJCXY0bDJfZGV2aWNlX3VucmVnaXN0ZXIoJmRldi0+dmRldik7DQorCWRtYV9o
ZWFwX3JlbW92ZV9kZXZpY2VfbGluaygmZGV2LT51ZGV2LT5kZXYpOw0KKw0KICNpZmRlZiBDT05G
SUdfTUVESUFfQ09OVFJPTExFUg0KIAlpZiAobWVkaWFfZGV2bm9kZV9pc19yZWdpc3RlcmVkKGRl
di0+bWRldi5kZXZub2RlKSkNCiAJCW1lZGlhX2RldmljZV91bnJlZ2lzdGVyKCZkZXYtPm1kZXYp
Ow0KQEAgLTIxODEsNiArMjE4NCwxNCBAQCBzdGF0aWMgaW50IHV2Y19wcm9iZShzdHJ1Y3QgdXNi
X2ludGVyZmFjZSAqaW50ZiwNCiAJCQkgZGV2LT51dmNfdmVyc2lvbiA+PiA4LCBkZXYtPnV2Y192
ZXJzaW9uICYgMHhmZik7DQogCX0NCiANCisJLyoNCisJICogVVZDIGV4cG9ydHMgRE1BLWJ1ZiBi
dWZmZXJzIHdpdGggZGlydHkgQ1BVIGNhY2hlcy4gRm9yIGNvbXBhdGliaWxpdHkNCisJICogd2l0
aCBkZXZpY2Ugd2hpY2ggY2FuJ3Qgc25vb3AgdGhlIENQVSBjYWNoZSBpdCdzIGJlc3QgcHJhY3Rp
Y2UgdG8NCisJICogYWxsb2NhdGUgRE1BLWJ1ZnMgZnJvbSB0aGUgc3lzdGVtIERNQS1oZWFwLg0K
KwkgKi8NCisJaWYgKGRtYV9oZWFwX2NyZWF0ZV9kZXZpY2VfbGluaygmZGV2LT51ZGV2LT5kZXYs
ICJzeXN0ZW0iKSkNCisJCWdvdG8gZXJyb3I7DQorDQogCS8qIFJlZ2lzdGVyIHRoZSBWNEwyIGRl
dmljZS4gKi8NCiAJaWYgKHY0bDJfZGV2aWNlX3JlZ2lzdGVyKCZpbnRmLT5kZXYsICZkZXYtPnZk
ZXYpIDwgMCkNCiAJCWdvdG8gZXJyb3I7DQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
