Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 046E8C58135
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:55:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1AA553F838
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:55:11 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id D07343F829
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Ow+a2Ki5;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b7277324054so120394966b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045620; x=1763650420; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ok2RdBzpSpHLhzykCdEYH0j446EshY49nM35p1BHvz8=;
        b=Ow+a2Ki5AzCX3vLcqH0RqmVs09tamjW2QuWBBSR2cyo+KmYYmHrPJ3zrfZzMgZOol2
         5+RSyn0YeCoVvtUPSr3h3FM+mmzu/q26NH/YTG6GOtVoIQeGGL6TQ5vLYN3QUa/X9+h5
         wLeViWdYoEvu82NADq+pf77HznYjelKvqreZ5QVdu52ik8Z2IhdJeMCxa3CtPeutco+S
         GBchd8AVZyw5xBw6mcxiSNhvA57FYndALJksrvUMq07E7jPpVaEcU0j6c7Q0FnE7462u
         XU3+UuG6F0I71dMijIkxOdINQVoT3ZE6N2bx7TOxupi1B8TFtdyisgAzex5GQbaDnpJV
         PZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045620; x=1763650420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ok2RdBzpSpHLhzykCdEYH0j446EshY49nM35p1BHvz8=;
        b=tWhWR3k8SJY6CFHBQ6dnU6puJwEGPLVwQYBAjrmg8pRjBAfoH4AxcbcCLnbRq8GwIT
         xKzR5eYFNCUAI9E3w0ziLHKs2nDFuqYYwQHe4C9hcGHI0X1xbc4aTsf9/LQa5yEqqAEx
         gajO17mhHM1ovSSzfp8Xy5XZ7JMrnd5U5sgShvpWtUzVChJrapYfOML6WYV7uI7EEygt
         hGa8UsIjGa3meHRpyI+viiMzvC3a2auYnE4H/BBkiCX8cRnZejOrUajrV4yDu2JHVMSp
         uoGyHpClAv0p4o4NWRJ9u8fMHYXNplY6jmrS3x7tvSPwsabVfe59QVGUW0DoNNK4gyuH
         8oqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQGBuKvCGalcF1QPv8H9UjXydf04ArkBE3O8g4BZAMIk6YJD5DH2WHlyeWH0h9912iPwYg3e0t9hvpMKsU@lists.linaro.org
X-Gm-Message-State: AOJu0Ywc6Rqe1bCWC1LmgJRRIYftIEOnjo1i6W/AtzTLo0Xz6dLwg4r7
	FVEfDz20M66BfBljP1v/5snTe+d8UQV1R6q66PKpS0MUPwAsX+4hJon1
X-Gm-Gg: ASbGncs3tuIucUvLCssgacVmuFdj4QmUk4jQTv9twwt48d1GZkIIim3KWGtmxwH20Sh
	Noltg3iAhrxYNnKm1tv24D0/Vyvk4LJMgyFPK8UxvGaJ7o/N8t3NeqTmMLZ1+V0NKFa08AjN+Bd
	t2MZGMd6Rr3sx5FilwZYjutnH2SFzOlNcqyZr10w+92smavzqfO/iBVZH4yIyPumvabtGGvukB9
	q2xOVOw7UqP1d9YfFbnHqfRXHBdX+4mLpAyKrHuA17rze0ffn6+XXIepzaM4mNG5hMi/yQw4ZbU
	UbWj02JB8onhb2SF4LY/F62CJH7Bfof+sPTmvsuBSwzFEKJBzHzL8wvXi4RT9iDJlNl2sJrfhXp
	OWOUbrMgqKZhtn5z/riQL1WIf/Ff8e3m1GG2rh26ZnkPEP4PLgP9rTvgTX9klpc2cKpK63tpD7a
	a4jqxTZtODSoU=
X-Google-Smtp-Source: AGHT+IEVO0VWis3bbMJUiE8uRIugN/ybdSy0+PSRpX0sJIqHqRSuLB5xwAdqwXMsQNdKZzGuzi4zRQ==
X-Received: by 2002:a17:907:6ea6:b0:b72:91bc:9b35 with SMTP id a640c23a62f3a-b7331b5f4e2mr767267466b.39.1763045619679;
        Thu, 13 Nov 2025 06:53:39 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:39 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	alexdeucher@gmail.com,
	simona.vetter@ffwll.ch,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 15:51:43 +0100
Message-ID: <20251113145332.16805-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D07343F829
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[mailbox.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: P5N2LNFD2DLPDJ52LNY23VBAIUBUON32
X-Message-ID-Hash: P5N2LNFD2DLPDJ52LNY23VBAIUBUON32
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/18] dma-buf: use inline lock for the dma-fence-array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P5N2LNFD2DLPDJ52LNY23VBAIUBUON32/>
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
YW1ld29yayBpbnRlcm5hbCBmZW5jZXMgYXMgd2VsbC4NCg0KQWxzbyBzYXZlcyBhYm91dCA0IGJ5
dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtYXJyYXkuYyB8IDUgKystLS0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1h
cnJheS5oICAgfCAxIC0NCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
YyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KaW5kZXggNjY1N2Q0YjMwYWY5
Li5jMjExOWE4MDQ5ZmUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFy
cmF5LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KQEAgLTIwNCw5
ICsyMDQsOCBAQCB2b2lkIGRtYV9mZW5jZV9hcnJheV9pbml0KHN0cnVjdCBkbWFfZmVuY2VfYXJy
YXkgKmFycmF5LA0KIA0KIAlhcnJheS0+bnVtX2ZlbmNlcyA9IG51bV9mZW5jZXM7DQogDQotCXNw
aW5fbG9ja19pbml0KCZhcnJheS0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZhcnJheS0+YmFz
ZSwgJmRtYV9mZW5jZV9hcnJheV9vcHMsICZhcnJheS0+bG9jaywNCi0JCSAgICAgICBjb250ZXh0
LCBzZXFubyk7DQorCWRtYV9mZW5jZV9pbml0KCZhcnJheS0+YmFzZSwgJmRtYV9mZW5jZV9hcnJh
eV9vcHMsIE5VTEwsIGNvbnRleHQsDQorCQkgICAgICAgc2Vxbm8pOw0KIAlpbml0X2lycV93b3Jr
KCZhcnJheS0+d29yaywgaXJxX2RtYV9mZW5jZV9hcnJheV93b3JrKTsNCiANCiAJYXRvbWljX3Nl
dCgmYXJyYXktPm51bV9wZW5kaW5nLCBzaWduYWxfb25fYW55ID8gMSA6IG51bV9mZW5jZXMpOw0K
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1hcnJheS5oDQppbmRleCAwNzliM2RlYzBhMTYuLjM3MGIzZDJiYmEzNyAx
MDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCisrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCkBAIC0zOCw3ICszOCw2IEBAIHN0cnVjdCBkbWFf
ZmVuY2VfYXJyYXlfY2Igew0KIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgew0KIAlzdHJ1Y3QgZG1h
X2ZlbmNlIGJhc2U7DQogDQotCXNwaW5sb2NrX3QgbG9jazsNCiAJdW5zaWduZWQgbnVtX2ZlbmNl
czsNCiAJYXRvbWljX3QgbnVtX3BlbmRpbmc7DQogCXN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZXM7
DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
