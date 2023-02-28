Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 441866A638F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Mar 2023 00:02:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AB424423F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 23:02:56 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lists.linaro.org (Postfix) with ESMTPS id 1AB7D3F4CC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 22:58:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=iGeMiebQ;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.176 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id a9so1977887plh.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 14:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677625126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUhwCn+Xf/Lh0tYXdZ7kyW7NLgJoG2FRHZEn6JIAUnU=;
        b=iGeMiebQfqsdLsgfABMInDPpT0eCDWnY0bzKQhv2CEK5EhNIGoZOLHqDdURijdTLsT
         +PiOl3C4N/66W6S4Zn1dpELV3QiV6uZw6GL7FtQmAqYXs/dp7KpDi1rY3SSGsRw2IuKJ
         MYDpJa/CAyYlfptDxaiFX5Sxk0RHd210tlZZzX/ENHFKYfyjSLeN83Jd673nhkqFlhks
         3lS6d83mRgRQLMOGjTQ4NIpV1LbsLGQj3ZY20dWXxMKTJl7wAGjuSYTymviyFVONhDQO
         /h1ixSkuGOQocfvMea8hCQFO6Q9jMGq0BUJ2pGhX06po7S3fI5IzEn/BykmD7GfNwsqN
         Cknw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677625126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MUhwCn+Xf/Lh0tYXdZ7kyW7NLgJoG2FRHZEn6JIAUnU=;
        b=GjvhGgmbKhBrR4f/WJW2G302kCh3wUiCIX/8H6pL2cD6mL5Yk8sj0Lo3fnV7o57qmf
         k62q8kMECDN+eRT+Ka0NF0tBssfnfRNyB0scZFcnW4yqD56pCE3EoRPVEBsIxrbw+ys1
         BKzoihSMDz1j4gDVyxgJZgXx/Wmk2YwzCyHXEHRoP8lVOtqjYnbzgX4TNQaZ4M4MIraH
         pQ7zTE63ByPm/aLhJbFeh+3pueew87DGHWc7pUaLxxQWYBDl4wRXlDbHqaXVX15dXRdP
         iQcjV7tSUDYYcmu1AEXsl0jUgUMP93xznVaAi+CfYAsnPvYdwsEkJ8XEV6MGh7nF3S3W
         j1Dw==
X-Gm-Message-State: AO0yUKX1Iq5efv0Gw6jMQ9yNnCnAK/YIwVZLG517s8WuEr3/PW4CGlQB
	rC34YLUKkQxSAofpNs9Cw1o=
X-Google-Smtp-Source: AK7set/qSAFUDC45HBseJqwMlAjQHk2jNVtF8Z2udb0yAH2yK0d9B7OWEfmAbvw/WktVeXd6kfqeNw==
X-Received: by 2002:a17:903:2303:b0:19a:a546:2959 with SMTP id d3-20020a170903230300b0019aa5462959mr14042960plh.19.1677625126132;
        Tue, 28 Feb 2023 14:58:46 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id f4-20020a170902e98400b0019a82ff8c38sm7028424plb.29.2023.02.28.14.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 14:58:45 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Feb 2023 14:58:08 -0800
Message-Id: <20230228225833.2920879-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230228225833.2920879-1-robdclark@gmail.com>
References: <20230228225833.2920879-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1AB7D3F4CC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.214.176:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.176:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[chromium.org:email,amd.com:email];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: EAUGFPGH6AZHYZ4QWNYEVNFOO35BBPGT
X-Message-ID-Hash: EAUGFPGH6AZHYZ4QWNYEVNFOO35BBPGT
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v8 04/16] dma-buf/dma-resv: Add a way to set fence deadline
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAUGFPGH6AZHYZ4QWNYEVNFOO35BBPGT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpBZGQgYSB3YXkgdG8g
c2V0IGEgZGVhZGxpbmUgb24gcmVtYWluaW5nIHJlc3YgZmVuY2VzIGFjY29yZGluZyB0byB0aGUN
CnJlcXVlc3RlZCB1c2FnZS4NCg0KU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtA
Y2hyb21pdW0ub3JnPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMjIgKysr
KysrKysrKysrKysrKysrKysrKw0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCAgIHwgIDIgKysN
CiAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4
IDFjNzZhZWQ4ZTI2Mi4uMmE1OTRiNzU0YWYxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtNjg0LDYg
KzY4NCwyOCBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiB9DQogRVhQT1JUX1NZTUJPTF9HUEwoZG1h
X3Jlc3Zfd2FpdF90aW1lb3V0KTsNCiANCisvKioNCisgKiBkbWFfcmVzdl9zZXRfZGVhZGxpbmUg
LSBTZXQgYSBkZWFkbGluZSBvbiByZXNlcnZhdGlvbidzIG9iamVjdHMgZmVuY2VzDQorICogQG9i
ajogdGhlIHJlc2VydmF0aW9uIG9iamVjdA0KKyAqIEB1c2FnZTogY29udHJvbHMgd2hpY2ggZmVu
Y2VzIHRvIGluY2x1ZGUsIHNlZSBlbnVtIGRtYV9yZXN2X3VzYWdlLg0KKyAqIEBkZWFkbGluZTog
dGhlIHJlcXVlc3RlZCBkZWFkbGluZSAoTU9OT1RPTklDKQ0KKyAqDQorICogTWF5IGJlIGNhbGxl
ZCB3aXRob3V0IGhvbGRpbmcgdGhlIGRtYV9yZXN2IGxvY2suICBTZXRzIEBkZWFkbGluZSBvbg0K
KyAqIGFsbCBmZW5jZXMgZmlsdGVyZWQgYnkgQHVzYWdlLg0KKyAqLw0KK3ZvaWQgZG1hX3Jlc3Zf
c2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVz
YWdlLA0KKwkJCSAgIGt0aW1lX3QgZGVhZGxpbmUpDQorew0KKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRl
ciBjdXJzb3I7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KKw0KKwlkbWFfcmVzdl9pdGVy
X2JlZ2luKCZjdXJzb3IsIG9iaiwgdXNhZ2UpOw0KKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91
bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgew0KKwkJZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmZW5j
ZSwgZGVhZGxpbmUpOw0KKwl9DQorCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KK30NCitF
WFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9zZXRfZGVhZGxpbmUpOw0KIA0KIC8qKg0KICAqIGRt
YV9yZXN2X3Rlc3Rfc2lnbmFsZWQgLSBUZXN0IGlmIGEgcmVzZXJ2YXRpb24gb2JqZWN0J3MgZmVu
Y2VzIGhhdmUgYmVlbg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KaW5kZXggMDYzNzY1OWE3MDJjLi44ZDBlMzRkYWQ0NDYg
MTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCisrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaA0KQEAgLTQ3OSw2ICs0NzksOCBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X3Npbmds
ZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiBp
bnQgZG1hX3Jlc3ZfY29weV9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpkc3QsIHN0cnVjdCBkbWFf
cmVzdiAqc3JjKTsNCiBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCiAJCQkgICBib29sIGludHIsIHVuc2ln
bmVkIGxvbmcgdGltZW91dCk7DQordm9pZCBkbWFfcmVzdl9zZXRfZGVhZGxpbmUoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQorCQkJICAga3RpbWVfdCBk
ZWFkbGluZSk7DQogYm9vbCBkbWFfcmVzdl90ZXN0X3NpZ25hbGVkKHN0cnVjdCBkbWFfcmVzdiAq
b2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVzYWdlKTsNCiB2b2lkIGRtYV9yZXN2X2Rlc2NyaWJl
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSk7DQogDQotLSANCjIu
MzkuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
