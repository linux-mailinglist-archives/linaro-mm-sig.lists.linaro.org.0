Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 956CCCB5D30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:26:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF1353F99F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:26:04 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id B7AF63F9B2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TJmtb5kz;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47789cd2083so184115e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455856; x=1766060656; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Hce5C1nspfSp6lJoBmBcpKxG2pvG1GeGisuj2PvlXY=;
        b=TJmtb5kzLzumNT7xoqbSRxd+5SjCnGYlnPmFJp4pWp01Q0pYnaXzVgk4YZ7LCkMl3l
         un358YMibLgBIYBw7m6k3liPisn+Ui7Qg6OTQK+3qPIErPNHUYLn8Wtw4sw1Jd8//V/F
         e7faNwyJKm32u+LONoDGLfvBVvjXHphIWL+uRyrvrKd2fpfBmAFq7K4l7LnXtxMv2614
         9yw1IVVY+n25mGzcIBIv3mjz4duDTy1uHAn4pFsGwoFjUqdmsPsy4uC1Ng0SekYxIpEH
         gc4kyMRdublPn/N311C81eObLUrLNeR/0AfhEkHwHpnFYrGzJ5MyDKI0UwnfBXcqaCNn
         QiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455856; x=1766060656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Hce5C1nspfSp6lJoBmBcpKxG2pvG1GeGisuj2PvlXY=;
        b=o7MusntxQ0x/3SCafDP6RD2LY5kfpAoCrN3rgDcxT4gvKOkpzC2TEL/Zl7yidc/aly
         1gKtIg+Evi61zz3wIU80LhzSptWXvGAwjaB3g35+CGm0EZ9zOtuJpy7hOHZoV218PrSq
         ciKXCD3rlPig69MZgFmMCY5HizYi0EvzchEOFkEz3WggEjGwrWuztd5CZiV90ho79TQY
         lGbzrzqgOyZgR2lqiWCgcqfp77nr+wN4tfh3+0GLC0zs8PJybiNwuDtzO+mUDMQaagsJ
         kDKDpp9UbqyxjjpnYAv7yj1LcacK4egypVyJEoJd37bxDg8usDqyWMM8YQdpkdiY4Ki4
         VjwA==
X-Forwarded-Encrypted: i=1; AJvYcCX7a0+NixhuZh4UbWN40992XwEGgrluIPncd7CFJHAI1ml+85nYNbcgNaVJcDfLTv9ckmva9QYKv+qAkrNB@lists.linaro.org
X-Gm-Message-State: AOJu0YzrLDwdAKb8UxiNKlJo88s2zrQ2Adn/aEdxxJ3B8z0zGOvsa5RG
	9n0gzGT9fr02+03vaxwKWAIBQ6bdSBYq8ssAlxJEx3MTqdBW97JKRIRL
X-Gm-Gg: AY/fxX5cNRzV0FFbSCxCYnTN286QX/2iMMidskk2BptmuhzfgQGMajklhXX5yt8R4iv
	HHAMzfq60dTp4kBSCtTxBZ9QEMAHi1tIjnBDsZ/q7LjreWw0332eKjGrZy3DIyN/Wwd5XjRuuve
	zyBBNuY0/1TmJ9tDM6JutnnJXee2/+yEhSd4ZtWnJ3ip+nG9fMTrtdMIVu0TFbbWunN7OcC+8bU
	SX+qeIEMwU8+p4MVxua1n/LessYx4RF9Nf1+iPOHv45XYaHmSMoo5ky4CBKCr68cLbg6EvBlhFT
	Z19V56IMeUJpSB8cUcYjaSIwQxJUeByq9eLs3bPVRIkXTaWwF2VL1L/gv0OHFeyQ9axpjSCb4Tn
	eZgYAZCYrxvgRqIUuh6y6hkZ0x86rwia7J93kKNXVWpgOrh9jHSlpgkeADu4I9x96d1w9j6o5NR
	EOe9ECW7ZJUXABtkX7V0ZIk2Ln
X-Google-Smtp-Source: AGHT+IEwHuUSi7Vps6RXsKW9MJSSoj5i4GSLWZDKYpHJEY9Mm1ABIJndgpykxk/5jrfSj0nRUJlrGA==
X-Received: by 2002:a05:600c:198f:b0:477:55ce:f3c2 with SMTP id 5b1f17b1804b1-47a8380c866mr57150495e9.14.1765455855662;
        Thu, 11 Dec 2025 04:24:15 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:37 +0100
Message-ID: <20251211122407.1709-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	BLOCKLISTDE_FAIL(0.00)[2a00:e180:152a:9f00:dc26:feac:12f7:4088:query timed out];
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
X-Rspamd-Queue-Id: B7AF63F9B2
X-Spamd-Bar: ---
Message-ID-Hash: BOLOFVWYUTVKZIHQON3WPDPZFLWRZ5Q5
X-Message-ID-Hash: BOLOFVWYUTVKZIHQON3WPDPZFLWRZ5Q5
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/19] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOLOFVWYUTVKZIHQON3WPDPZFLWRZ5Q5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNpbmcgdGhlIGlubGluZSBsb2NrIGlzIG5vdyB0aGUgcmVjb21tZW5kZWQgd2F5IGZvciBkbWFf
ZmVuY2UgaW1wbGVtZW50YXRpb25zLg0KDQpTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIGZy
YW1ld29yaydzIGludGVybmFsIGZlbmNlcyBhcyB3ZWxsLg0KDQpBbHNvIHNhdmVzIGFib3V0IDQg
Ynl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCg0KdjI6IGRyb3AgdW5lY2Vzc2FyeSBj
aGFuZ2VzDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aWdhbGlhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDEyICsrLS0t
LS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jDQppbmRleCBiM2MxZmI5OTA2MjEuLmQxYTlhMWNkZDY0YiAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jDQpAQCAtMjQsNyArMjQsNiBAQCBFWFBPUlRfVFJBQ0VQT0lOVF9TWU1C
T0woZG1hX2ZlbmNlX2VtaXQpOw0KIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2Vf
ZW5hYmxlX3NpZ25hbCk7DQogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWdu
YWxlZCk7DQogDQotc3RhdGljIERFRklORV9TUElOTE9DSyhkbWFfZmVuY2Vfc3R1Yl9sb2NrKTsN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSBkbWFfZmVuY2Vfc3R1YjsNCiANCiAvKg0KQEAgLTEy
MywxMiArMTIyLDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5j
ZV9zdHViX29wcyA9IHsNCiANCiBzdGF0aWMgaW50IF9faW5pdCBkbWFfZmVuY2VfaW5pdF9zdHVi
KHZvaWQpDQogew0KLQlkbWFfZmVuY2VfaW5pdCgmZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vf
c3R1Yl9vcHMsDQotCQkgICAgICAgJmRtYV9mZW5jZV9zdHViX2xvY2ssIDAsIDApOw0KLQ0KKwlk
bWFfZmVuY2VfaW5pdCgmZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEws
IDAsIDApOw0KIAlzZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KIAkJ
JmRtYV9mZW5jZV9zdHViLmZsYWdzKTsNCi0NCiAJZG1hX2ZlbmNlX3NpZ25hbCgmZG1hX2ZlbmNl
X3N0dWIpOw0KIAlyZXR1cm4gMDsNCiB9DQpAQCAtMTYwLDExICsxNTYsNyBAQCBzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKGt0aW1lX3QgdGltZXN0YW1w
KQ0KIAlpZiAoZmVuY2UgPT0gTlVMTCkNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlkbWFfZmVuY2Vf
aW5pdChmZW5jZSwNCi0JCSAgICAgICAmZG1hX2ZlbmNlX3N0dWJfb3BzLA0KLQkJICAgICAgICZk
bWFfZmVuY2Vfc3R1Yl9sb2NrLA0KLQkJICAgICAgIDAsIDApOw0KLQ0KKwlkbWFfZmVuY2VfaW5p
dChmZW5jZSwgJmRtYV9mZW5jZV9zdHViX29wcywgTlVMTCwgMCwgMCk7DQogCXNldF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQsDQogCQkmZmVuY2UtPmZsYWdzKTsNCiANCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
