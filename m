Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 129BDCB5D54
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:27:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 349443F9A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:27:01 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id D08C63F9BB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="O10bSc/s";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso84695e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455859; x=1766060659; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RL6rVAENXblPP/WtJ2kkdTszLuUIj+9DJtEA2dEhVX8=;
        b=O10bSc/sftEJascjSV06fqxoeV1mbhm1V3ZF61LRqGKgSMzadRiLHDpzYx/Rd3GCGM
         4qS7q4Hu8w84yZKYMtu0T0LxFnlTw5NI7+12dHbBXAv//0lfD1Lk6324gH6RA3fLzO/M
         upUp3NoAgROw3LFjCkzPuNLxOQ+GzETaiKOKMwkjv4/8TfIocxpqrw24+9LiHlhapZnA
         ptcWbzBYpzbVgwFn0Kyp3v4HQkBPp54BKGEAcWvX4S/o6sXFSNvoXsQ3K/NlfGedZ4+v
         hT7qfXOjc6Asr0Z3XU4UW4EC1LbjfpUbqisy5oETO9/60jOK5gd5piXm+IEcOSgEQRF5
         Srxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455859; x=1766060659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RL6rVAENXblPP/WtJ2kkdTszLuUIj+9DJtEA2dEhVX8=;
        b=I2FchrlVCq8pJjZcsuL3Af+yfO21YymIufhkQ9VYks0tKrw46SNENVRlDApBI28rsk
         BqNBFvnkaJ8ciLE06QgrPkTvtPvn9HPqv/ncCX93/KYMKXINbF24uUAgbrNquD5BqKR9
         iMGbG2HkOcYXtl+R6K+JwjUPA3RndAVWiO9rb1vPEb5MF5FvcbHc8k2UKzJMwMgVvBXf
         tFIZdTBKtEZuF2tlwdRwxXVnW4KsqGTcyrfuJrgotghoTQd5q9Q5QryblGb/wNFEVo1U
         uYut6yaaOjhbQxczLrMuJuK/cT1t+1hG9qXjj9wECKb7hYwjSPVYYOuz7kVqQL/ijEC+
         Q7mg==
X-Forwarded-Encrypted: i=1; AJvYcCW6ycfP6uUp5jV6o2Q2ScK5xoYHOwy/QmDF6QncB8HoeJBWIqtbjMo5sXo+bmos67HpsXhQjV1p9CFmgpeK@lists.linaro.org
X-Gm-Message-State: AOJu0YyZHl1yGgnQgf4co9vVqu2nsVGrYbo5G3KogWO7/Yh2XzvPxJL8
	56VXpGNqFZJ0KNH/JOAqScdTt9H+Odh4GgY7YKL9g7lJL30Aip8aBas2
X-Gm-Gg: AY/fxX5r6ppWvgS/IJkMGutuvlKldFFYm/AeT6utFFg7JSSTvC1qqrbVu6FjiBm/3NQ
	I6SuMRWcWDOu23fAlwvds3kuohNlM2trzQyIQ5WO1ekzB5ezQPgRH3pKeHhEB/mpvQb5rdCT+rE
	WDNv1ma6qY92gKDJjyYucNhWsT1Yfd3lShkW/eZ3w1PtUNsxtfPk4YKbdWCbAYBd4+WrgMaUGv7
	O1RfUKOinQL+rndDNiSsVDsIhNYY+j6PWmzdVjHb2NHG9HHHBwZsvVEsTKnslrhYRpLV2azqz6w
	AOi+QfPSdp3UzXT3J/Tckdk49rp3IpIm4o3RQrswPFoT0aLINvb45w7sRMVrhtFaDCj12moGtII
	e+a2ts/HWgVb1OK50o+FkuZY/P1+31oDZyT4sWHacqmPB8o7MM0AANrsq7P5Ngz/gegPjfBsXWJ
	5TkLHxgXvW2IqYlZIq/UY21I8R2pLRDkYqliA=
X-Google-Smtp-Source: AGHT+IGO+P+I3tkxD1V8l6WQS7ItiN0qcbbKeByVqYkK7OTOlOAIc/kyFtCG2w2B1bp0MUlsgtHjTQ==
X-Received: by 2002:a05:600c:1d0b:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-47a83759f18mr54732855e9.14.1765455858704;
        Thu, 11 Dec 2025 04:24:18 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:18 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:41 +0100
Message-ID: <20251211122407.1709-11-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.49:server fail,2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D08C63F9BB
X-Spamd-Bar: ----
Message-ID-Hash: CNDZTGE3V434SHYHCPK2EWGNSQVX3DPT
X-Message-ID-Hash: CNDZTGE3V434SHYHCPK2EWGNSQVX3DPT
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 10/19] drm/amdgpu: fix KFD eviction fence enable_signaling path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CNDZTGE3V434SHYHCPK2EWGNSQVX3DPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FsbGluZyBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSBoZXJlIGlzIGlsbGVnYWwhDQoNClNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0t
LQ0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYyB8IDYg
LS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCmluZGV4IDFlZjc1OGFj
NTA3Ni4uMDljOTE5ZjcyYjZjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2FtZGtmZF9mZW5jZS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCkBAIC0xMjAsMTIgKzEyMCw2IEBAIHN0YXRpYyBib29s
IGFtZGtmZF9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQogew0K
IAlzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAqZmVuY2UgPSB0b19hbWRncHVfYW1ka2ZkX2Zl
bmNlKGYpOw0KIA0KLQlpZiAoIWZlbmNlKQ0KLQkJcmV0dXJuIGZhbHNlOw0KLQ0KLQlpZiAoZG1h
X2ZlbmNlX2lzX3NpZ25hbGVkKGYpKQ0KLQkJcmV0dXJuIHRydWU7DQotDQogCWlmICghZmVuY2Ut
PnN2bV9ibykgew0KIAkJaWYgKCFrZ2Qya2ZkX3NjaGVkdWxlX2V2aWN0X2FuZF9yZXN0b3JlX3By
b2Nlc3MoZmVuY2UtPm1tLCBmKSkNCiAJCQlyZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
