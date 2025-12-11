Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B360CB5D5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:27:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD8A33F7F5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:27:30 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id E80743F9AD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=C35kaELV;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso58075e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455861; x=1766060661; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K08D5Oiixjr6rV1a2EG5xZ5xfdLqzMUTZynycpvlcWc=;
        b=C35kaELVS7xCLGFD00fhUuGlSRnSZfPpj34L5ucu4GfnudCQfldUv1GcDGCZFwe35d
         3AVRr9B18sj9a2Rud6UqTUonSx7K0LfnCpLU5Tk/i5TnGHhwFhENM3KEVRaNrncaVTOS
         yTKqylUWg8gSeXWUc2kfhCiMOwJMamscz2aYuUEAA5TN1gUATl1kMTMTD8roTaTZFjlE
         Dk/pZiUwSyKqQZJDI16f6X+0JHdf7Bv2Kv/nkoFKLjhX3zy4x7J7OJJpEIiIrAUsoe0F
         B+Y2psem/6sk4Rv60eKOsBbDMcO1PuYeUsV7dOetfF0hvWgOiPRruUCLuDxxkQOCC518
         BVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455861; x=1766060661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K08D5Oiixjr6rV1a2EG5xZ5xfdLqzMUTZynycpvlcWc=;
        b=ud4lTj8/mTyoMuUcRnj7KhDo/+Y4W1wCM9jCtoBpbXeTjF0SPPyyWUKWax1AapEuNL
         GZiRwK7ewhKkwTx0tUNysl+FkJ/gF8CwsMiaU0IC3nR655UJUR+6rtR412eEzz5u6Qu7
         w7mutf4s6lXUA7rj0HMqs61aEbJswoRBT15xlpomPmL6V66D3HeRKhlzd7mA4sytPVC7
         BgzEwC0b4GRR7DSwnVSjlnR5MFFcZw4/gqy2Ko3kfd5tLqh/WsWlqI3S4c7IMmdCGzJC
         ZTnyeKoP8HOi3EPVtEkybIlZOa2RoXuihdYaLKltObkcdWjcQIRdEmzJ2QfWCXkdZW+a
         cMfA==
X-Forwarded-Encrypted: i=1; AJvYcCWjexarzeQv5bvnhej0RxvbiRAmlgk+S2bGouFE/5TfsmWk+XPHSOUwukbRleIrYvChZwzzy2+/2b0z0rCd@lists.linaro.org
X-Gm-Message-State: AOJu0YzJYJ5CiaTzG3B5WoCtHUjUyiMyISjBu8k8rvdlG7EmLXY7bk9a
	aj/sK/PM6zld/q3TEatZGac89q/IK7UU2jHsU9zrxlUAQtfLFudPXuhx
X-Gm-Gg: AY/fxX5OBVqCo9ktVNzbLUjVGGzYCrkHrxwHYphCWN+MVRhqdi6HiNAIZ+zD3zYbe/u
	5JYZWnA4+g5f5LWC/BckP7r8F+2KAcSZrN7Q2NEGUbWi+KuzFup5SX5iw7974Q7tqYqAKkjT9gi
	1I3lPR5UZoji86aYW7htXA0l4RyElbDTJb+Pw+qwL7g8wmp4jOf70XaL33NmFHwv6RuFR5HcC3L
	1LWlMdAqPwN0abqJhcH5g4Sw6qDRlBuIwIU4Y43hOl2BaXFnCIzUbqC0gmjlh1ohKxYAV2aa800
	Lhj7tod6+AVV5BRMKPlGhC3luTVCaaHhIXwJjA3hy6Y2q06x9QJ/u75mvwxhopTy1mQpNTQb0cO
	gHZ5zu7OyGdAJ4FI5ZoD8k2Ri6BuZgUMHYRuZdg40SoKjCugRumLJogQYavt2mkCVKl4w0UBovL
	KkKyNvc2sdHaVGpw+KzGQXRiq/
X-Google-Smtp-Source: AGHT+IEgQQONtMz4eZ7i2QUf3kaQMxBMGycmBqRH50HCOUKjZNviAGzuroerJ5+kekpKf6L2cRXRfw==
X-Received: by 2002:a05:600c:2218:b0:471:793:e795 with SMTP id 5b1f17b1804b1-47a89d2c84bmr12792255e9.0.1765455860893;
        Thu, 11 Dec 2025 04:24:20 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:20 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:44 +0100
Message-ID: <20251211122407.1709-14-christian.koenig@amd.com>
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
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
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
X-Rspamd-Queue-Id: E80743F9AD
X-Spamd-Bar: ----
Message-ID-Hash: ELJXZBU3ROIWXIFPAKVTA56XZGI7GWRU
X-Message-ID-Hash: ELJXZBU3ROIWXIFPAKVTA56XZGI7GWRU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 13/19] drm/amdgpu: independence for the amdgpu_vm_tlb_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ELJXZBU3ROIWXIFPAKVTA56XZGI7GWRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgYW1kZ3B1X3ZtX3RsYl9mZW5jZXMgdG8gb3V0bGl2ZSB0aGUgYW1kZ3B1IG1v
ZHVsZS4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
Z2FsaWEuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3Rs
Yl9mZW5jZS5jIHwgNCArLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRl
bGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3ZtX3RsYl9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3Zt
X3RsYl9mZW5jZS5jDQppbmRleCA1ZDI2Nzk3MzU2YTMuLjI3YmYxZjU2OTgzMCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV90bGJfZmVuY2UuYw0KKysr
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3RsYl9mZW5jZS5jDQpAQCAt
MzMsNyArMzMsNiBAQCBzdHJ1Y3QgYW1kZ3B1X3RsYl9mZW5jZSB7DQogCXN0cnVjdCBhbWRncHVf
ZGV2aWNlCSphZGV2Ow0KIAlzdHJ1Y3QgZG1hX2ZlbmNlCSpkZXBlbmRlbmN5Ow0KIAlzdHJ1Y3Qg
d29ya19zdHJ1Y3QJd29yazsNCi0Jc3BpbmxvY2tfdAkJbG9jazsNCiAJdWludDE2X3QJCXBhc2lk
Ow0KIA0KIH07DQpAQCAtOTgsOSArOTcsOCBAQCB2b2lkIGFtZGdwdV92bV90bGJfZmVuY2VfY3Jl
YXRlKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBzdHJ1Y3QgYW1kZ3B1X3ZtICp2bQ0KIAlm
LT5kZXBlbmRlbmN5ID0gKmZlbmNlOw0KIAlmLT5wYXNpZCA9IHZtLT5wYXNpZDsNCiAJSU5JVF9X
T1JLKCZmLT53b3JrLCBhbWRncHVfdGxiX2ZlbmNlX3dvcmspOw0KLQlzcGluX2xvY2tfaW5pdCgm
Zi0+bG9jayk7DQogDQotCWRtYV9mZW5jZV9pbml0NjQoJmYtPmJhc2UsICZhbWRncHVfdGxiX2Zl
bmNlX29wcywgJmYtPmxvY2ssDQorCWRtYV9mZW5jZV9pbml0NjQoJmYtPmJhc2UsICZhbWRncHVf
dGxiX2ZlbmNlX29wcywgTlVMTCwNCiAJCQkgdm0tPnRsYl9mZW5jZV9jb250ZXh0LCBhdG9taWM2
NF9yZWFkKCZ2bS0+dGxiX3NlcSkpOw0KIA0KIAkvKiBUT0RPOiBXZSBwcm9iYWJseSBuZWVkIGEg
c2VwYXJhdGUgd3EgaGVyZSAqLw0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
