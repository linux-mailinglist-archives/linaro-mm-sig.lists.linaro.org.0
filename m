Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EFAD19D9B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:23:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 279CC40153
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:23:19 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 0B20240160
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=QEvyetvm;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so52506895e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317694; x=1768922494; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Hce5C1nspfSp6lJoBmBcpKxG2pvG1GeGisuj2PvlXY=;
        b=QEvyetvmEEes0eKBvfOZP3f9/jKcr2C6gCgVOS0GNxontxuZZcwoo4kKL9suLgr74Q
         IbK7mffucV8auBtnsMwFGLmaw5YGCKAIEEXCMOYP+CzMuzTi2/lkrVQljf6/qMiAnyKP
         Q+dkg8+MCFHR8rq/HtT82JIyY51ijvBadztmGQeDcP1NZ+QObqktYus0tZ59tSEke12A
         7WDZQ0Acf+Tu2NDf3PeC8ZNgDvUl1CGUX6jnFuARc8dbCprHb5bakGi7sFCmbqrlhjNi
         WsF5JW/X6J65R1cf66ztoMYioCU1wRboLJd9+lTmr2xeVwRWg3dNnlgbVe2dd2GBxD9C
         fERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317694; x=1768922494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Hce5C1nspfSp6lJoBmBcpKxG2pvG1GeGisuj2PvlXY=;
        b=W3AUnrtRmV7n1IA5rrhPfYlr/DsD5sSRKnUPDjGtSmT67uFzEunCapaHlkZ7QPxR/L
         acw9yTPFPq7SdNTFEdzf4ifb7GsOtbMWvbydv0GruarZfWNaCRPZIzhgrOdDLZ6T4CGd
         iuvX3C2Pd+E8QmwdIThCYWRu+lnK2ra1jICJnNwjC6Or7WDo/Jy5kug9aeaUEpZPUi0B
         eupc8cD+xbBAPV5XqtJXXoGMbmuMp5l1bvAvveJUeCB/cG5QxNHGxeUKXwmP5z4kBZa0
         G8IWOyqiAoEZPcMAQgHESAmPxQXcqlo9G8zFv/OV5tTtA4wG3lCyEzGqGzPrZd9k/pcn
         YFTQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0fAlSWIKoS6BRy1RQoacii+BhkkdKuYG2xlh0K2u45hCl+e45JVsMBnH4V17HKyzV5zh+41+rG+rz09/K@lists.linaro.org
X-Gm-Message-State: AOJu0YwB6JVv547y8NlxWwfscxPjkXBwlaetWIMDXApOUq7NyOYXt/MP
	2DfWLwW/ThYeyVtCgeBUWBfPKlb0KFxWSXrSoa5RAaxhcOiQENnbAc7n
X-Gm-Gg: AY/fxX4oS8tMxLHOJjUEKTrR6qbEICq4vk/nunOJCoZhdU0DBrWekPYJzgI3ob7gHel
	WMyJBUSTEihyMbmAqfu49mZ2PafhavdZsfpDoojEKXWryOWKWI32MLpHOpXYo7uTnbmdKoN67Xb
	ebha+VsX15OU2RPjrVV1/8LxFm7YNTOONtvxXOG3HoNoqtPW3I9X4FRYzqApKFEzwaef9kBVZEl
	Lgi41MXj6OYa6fabOE4329zEWtV+Uu3QHHeRc6KAU7t8rkQG4ZBgTHBT936KvMm38PCvsCvmnC7
	K823o5euHcMx7BGmGKTFq8TiOKuhfiBJt2XdkPbwYOwUgqF5zIUWwccLhdtCqkuHh8KUBC8SB1X
	bNkI1I25sY3zwVFvRbdooBHiAAZx4N/tr6uoggB4+Iv0DLkL0LRkgoKospsDZLqotVLzLPQ/ToJ
	AvcX7sn04UF9Jwge0f0ESjFrU=
X-Google-Smtp-Source: AGHT+IFNhxXTot9t1LrGSBJyT0aOraYgKRGpbDgTjokjGboiYf0YJbhZKNvkLegAfErabndXF8MfOA==
X-Received: by 2002:a05:600c:630f:b0:477:7658:572a with SMTP id 5b1f17b1804b1-47d84b3b606mr210995195e9.20.1768317693960;
        Tue, 13 Jan 2026 07:21:33 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:33 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:14 +0100
Message-ID: <20260113152125.47380-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0B20240160
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received,209.85.128.52:from];
	NEURAL_HAM(-0.00)[-0.999];
	URIBL_BLOCKED(0.00)[igalia.com:email,amd.com:email,amd.com:mid];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HBJDFV7E7KRBZKOIGFEKBHTJ5H642ETF
X-Message-ID-Hash: HBJDFV7E7KRBZKOIGFEKBHTJ5H642ETF
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/10] dma-buf: use inline lock for the stub fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HBJDFV7E7KRBZKOIGFEKBHTJ5H642ETF/>
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
