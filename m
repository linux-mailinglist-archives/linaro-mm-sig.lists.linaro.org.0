Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31852CB5D60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:27:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BA7D3F99F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:27:47 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 40A393F9BA
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kWiUkHPY;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47796a837c7so281665e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455860; x=1766060660; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6v3fbrT3uzuThbyIoQuFOUOmSI/+P7Q2rmFbCz4jvk=;
        b=kWiUkHPYXN2vjZkNztWnMzYVOE9h9jTsVnqtgy2sVUP3ZJJco5ReT/nfKpJMO9s1SH
         rgNUx7tFqCzunWmPy4K0nmtTCidjwdFzT8NvUtsmxjSNisGWJl6nBPjlkfZGAUv20nWT
         xN3bWwY8VA9LfBJxA5wHsM0/xDq+3GQhfepnrL75vwU0BwYs/dBHfh26jx1H2xpllmj9
         oQAJOqbYe/T7JC4RA718L41PZ87Dy1cm7f6GsPmhoBWdVCe6mRtr+f2s/Ok3NoBwqdw/
         z5jNRayKmWqkpgxWnXDuCRsFYpDfLIcVCXPYg2DlJcZ/EbLya5DJWMJ04knQuWzj42fV
         VOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455860; x=1766060660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T6v3fbrT3uzuThbyIoQuFOUOmSI/+P7Q2rmFbCz4jvk=;
        b=MD5MKkxYvNDLnioTfeON+TK42YIj3Pop5a/2syOr/Wcluf9EWNwUFyoUVap0lbcAWt
         CuAC84eG7zx1brBBu3m8vBVnaBq/vxsVg3q/JVGJOZZbHsUt21droZ00ixnP02P0OoYg
         BMpBjEPpfqAYBDl/ngyxSDD6GC1pS+9Ywa7v0TJ+it0JdkWDgiEE8Av8C0GqDV27Jb+S
         ftLj6+XxuY6V8TB8lYDfJvr19S7XwG878ltERAqmOLGQpEn8UYoyKmZ7K2ss46SE7W+c
         2Yyi0F9bR1FWCJ9CbQDs8dMYO1E0MIEP17QIserk7RD1fA7+rucI0aYNCHqVtMcCSwNl
         aKzA==
X-Forwarded-Encrypted: i=1; AJvYcCXpeiyEEJ9C2p/rKI3wriPc9P4a6NOB18aHejM6GCxFXPaImbPUc61WNZLr61vTSgG5IQz+jPbQmx43yMV/@lists.linaro.org
X-Gm-Message-State: AOJu0YyH028bbQp9wVXsAYGne46eB3KsDgDS4qwR3uiBf1f56eccG+Ge
	hKJ7rLn6qkLswL8iSln3jBlOsY15GtHY/AYA/5zFc9GZIlTH2y4eCPkK
X-Gm-Gg: AY/fxX4NmOl9CXjlx0kUytAaQ8FABfHFTk8kBDwPj3hOUWu43Dknij+AvqFbE/kYjJ0
	wIDmrwBAuGvVaGTQTrQ92XvRq33Qbz5Edh20CsIecX/yw+DNkEUjcUCDJB7rGbHgMZLiY/66xvx
	6e999SwaWL0O9aykxxOQGGyR3bONxFu3AbjBgYFh2cOohHwTqLh4T10f9bJEOnibp74T4f1zl4G
	v/AHqBl514x5tJ8Qk3ft+DBx8z7Vsn5sWgwJQ3JLLgl0oLdB68UAMlAOGx4DOTUNty8Bfhf6Rx6
	QxxyKao+Rr/WCdEYq96tGlqyhhFu0sGXkqwnWKDWJj8edMBAnURJxUUlkkv2gT5vSodn08Ur+hz
	cV5lF8/lA+WNfUWvls3VLACUyD/MRZi1F/9ikP+DiuMXZIcnJ6WNbGPOPzhRIxALrZ6QcSXXt9/
	i+iZLHmW9y26zac27YNmgVFik9hvoXuR5ZQb4=
X-Google-Smtp-Source: AGHT+IFtcxuwjO12y9wl7B3VJGexykNsO7pqVLTd/IFJklcCFoGNqavbn4ok6AE2Ip5G5theEviayQ==
X-Received: by 2002:a05:600c:1554:b0:477:7f4a:44b4 with SMTP id 5b1f17b1804b1-47a837946bemr59419015e9.1.1765455860198;
        Thu, 11 Dec 2025 04:24:20 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:19 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:43 +0100
Message-ID: <20251211122407.1709-13-christian.koenig@amd.com>
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
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.47:server fail];
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
X-Rspamd-Queue-Id: 40A393F9BA
X-Spamd-Bar: ----
Message-ID-Hash: 2MARW3EXGW5Z6RLDURX4IOQOE4ZT243T
X-Message-ID-Hash: 2MARW3EXGW5Z6RLDURX4IOQOE4ZT243T
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 12/19] drm/amdgpu: independence for the amdgpu_eviction_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2MARW3EXGW5Z6RLDURX4IOQOE4ZT243T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUg
bW9kdWxlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGlnYWxpYS5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZp
Y3Rpb25fZmVuY2UuYyB8IDMgKy0tDQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2V2aWN0aW9uX2ZlbmNlLmggfCAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZXZpY3Rpb25fZmVuY2UuYw0KaW5kZXggMjNkN2QwYjBkNjI1Li45NWVlMjJjNDNjZWIg
MTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25f
ZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9u
X2ZlbmNlLmMNCkBAIC0xNjcsOSArMTY3LDggQEAgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlX2NyZWF0
ZShzdHJ1Y3QgYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlX21nciAqZXZmX21ncikNCiANCiAJZXZfZmVu
Y2UtPmV2Zl9tZ3IgPSBldmZfbWdyOw0KIAlnZXRfdGFza19jb21tKGV2X2ZlbmNlLT50aW1lbGlu
ZV9uYW1lLCBjdXJyZW50KTsNCi0Jc3Bpbl9sb2NrX2luaXQoJmV2X2ZlbmNlLT5sb2NrKTsNCiAJ
ZG1hX2ZlbmNlX2luaXQ2NCgmZXZfZmVuY2UtPmJhc2UsICZhbWRncHVfZXZpY3Rpb25fZmVuY2Vf
b3BzLA0KLQkJCSAmZXZfZmVuY2UtPmxvY2ssIGV2Zl9tZ3ItPmV2X2ZlbmNlX2N0eCwNCisJCQkg
TlVMTCwgZXZmX21nci0+ZXZfZmVuY2VfY3R4LA0KIAkJCSBhdG9taWNfaW5jX3JldHVybigmZXZm
X21nci0+ZXZfZmVuY2Vfc2VxKSk7DQogCXJldHVybiBldl9mZW5jZTsNCiB9DQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmggYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuaA0KaW5kZXgg
ZmNkODY3YjcxNDdkLi5mYjcwZWZiNTQzMzggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZXZpY3Rpb25fZmVuY2UuaA0KKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2V2aWN0aW9uX2ZlbmNlLmgNCkBAIC0yNyw3ICsyNyw2IEBADQog
DQogc3RydWN0IGFtZGdwdV9ldmljdGlvbl9mZW5jZSB7DQogCXN0cnVjdCBkbWFfZmVuY2UgYmFz
ZTsNCi0Jc3BpbmxvY2tfdAkgbG9jazsNCiAJY2hhcgkJIHRpbWVsaW5lX25hbWVbVEFTS19DT01N
X0xFTl07DQogCXN0cnVjdCBhbWRncHVfZXZpY3Rpb25fZmVuY2VfbWdyICpldmZfbWdyOw0KIH07
DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
