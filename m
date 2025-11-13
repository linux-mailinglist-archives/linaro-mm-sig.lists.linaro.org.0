Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DDBC5812F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 15:54:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F6663F887
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 14:54:56 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id DE7623F820
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 14:53:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ep5SmttN;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b73545723ebso124990266b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 06:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763045619; x=1763650419; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kf5nUbmsJlQk2pLkhNRD+8n7Z/+gOPuUpYrxnOVZvxo=;
        b=ep5SmttNlwXr5c94KiLYmQh6cnkupvhYLMgMk/U8Jj468H5VHdxPQK53L2Z6iOdKi2
         h/5yIUWCVpw+x/IBYcazHP/p8Gu6lgw9eGroi4jN22OWmvQOE8GzwhaJHA+NAnNwxMh0
         ApVfK6WUQj7QN67ikjUnX5XllluV+kCzKGHSnxg6+s4f26yMhLet+755emIzQDpUZGrp
         OxVANa2xmSqf/QyJa7QIbP8jfiFr2LhyEkKVQqFugJyBP1I8WOEbcRWz0vTz31iaEstJ
         ploi6MkIQw35auKgfQmSKkRdTgzxsCjy3GLEx8/MjpgKBEAdBxDLsm2X4NH7KtunUqQU
         G7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045619; x=1763650419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kf5nUbmsJlQk2pLkhNRD+8n7Z/+gOPuUpYrxnOVZvxo=;
        b=AD9qH1acgBi5Sbz/BdntSnC4z4xn2ClHl70061O/r2fG3kMkszKmM2oVEzffPH1upR
         O55OqBxriEGHA8y3W1gz4D1vBhyFGlKuAtS+WZAodvlfDNo0vxYJAUuVgPC0ZiOh1T7O
         OTpJZGD51QBRVAJD8+VXXpXiGIDe0Jj3dFeU2Pjm5rh8QgUm6TjfizHXvsVUk1XJw8ch
         KzrQ/JEQnNqla1GY6LQhE+YUNU7IKvs/VotVB3VXcisgC5mRBGMA7TiONV3chZKeGbgZ
         reHlCv84Xq6+GxS0uwGg4JIyDqhivfZAUEieFKOBDrXXgFfBl9QYEB/ASPV/VeL+Kysg
         QrDw==
X-Forwarded-Encrypted: i=1; AJvYcCXDAYgPCCtkDmRvKahtbDXdWAqzW1XT/6wJY3Lc6Br3WudOKZ8eGPDU4Ess6jwINrMV0GO+noZwAWN+A5cB@lists.linaro.org
X-Gm-Message-State: AOJu0YxjL4tk2deMcSitbzoeDhlyFkeRyWcJ3YxOkwRXndgGZfoTVwi9
	FoYjpAzWDk4zFFfAUb2kIl1CUWZG2runLR4Vm/yMehK4087RbTJOig4k
X-Gm-Gg: ASbGncvKuPLjCFQg3rHscVOnM28yRIRgn8AY+u3ZlDsIex4PNYrAE/j7QXfQLpHCm58
	FBub8MARxKL25U2Pw0n3B461G2ZCWwp0xBUl9PHqjRpD2QvwpzthuCYgphx9h0rv+NhbMCFZDdv
	ZRbU37F+FzKaMGxy5EpN5YuKOIjOePI6wGGw6JwNwAtJNGyTlshwyP6C75V4btAvtEx97lTgTYW
	HGJsdp5CTxVhzC6xndgi1Ha4QZHK+jpxjpLJ8AV/wNHhjfl3sFWIe9hs8nJRvIQi4atMbfBIjUq
	bbIntA3C0MfSadirXbkSFIqV3wAt6yty9Wrq2BMPf2M/h8FZCKePA2IcTDCNQMxnDvQTo+yXaEh
	+/4az4ig7KDiV4UL8sPXDrF7LnWOwKP/CYOHsEv1qpYwEKiqrgi9LqqLR7aDJY0kIgnggNg8D8f
	wAoqSayrYEZds=
X-Google-Smtp-Source: AGHT+IGFi4syHFjqiuoZ0USYNWW31Yq7gTAM89aYi7X38qHdJnJn/ojNMUB0T9kSadkfKYlQFb0oYg==
X-Received: by 2002:a17:907:60d3:b0:b72:eaba:aac2 with SMTP id a640c23a62f3a-b7331974fa5mr762979966b.26.1763045618777;
        Thu, 13 Nov 2025 06:53:38 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:15aa:c600:cef:d94:436c:abc5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b73513b400fsm173747166b.1.2025.11.13.06.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 06:53:38 -0800 (PST)
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
Date: Thu, 13 Nov 2025 15:51:42 +0100
Message-ID: <20251113145332.16805-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113145332.16805-1-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DE7623F820
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.42:from];
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
Message-ID-Hash: 4H53QOG3K6DRTTBC3EAF5RC3GBEPBZWG
X-Message-ID-Hash: 4H53QOG3K6DRTTBC3EAF5RC3GBEPBZWG
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 05/18] dma-buf: use inline lock for the stub fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4H53QOG3K6DRTTBC3EAF5RC3GBEPBZWG/>
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
Zi9kbWEtZmVuY2UuYyB8IDIwICsrKystLS0tLS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4
IDlhNWFhOWU0NGUxMy4uZTZkMjZjMmUwMzkxIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC0yNCw3
ICsyNCw2IEBAIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW1pdCk7DQogRVhQ
T1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbmFibGVfc2lnbmFsKTsNCiBFWFBPUlRf
VFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVkKTsNCiANCi1zdGF0aWMgREVGSU5F
X1NQSU5MT0NLKGRtYV9mZW5jZV9zdHViX2xvY2spOw0KIHN0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNl
IGRtYV9mZW5jZV9zdHViOw0KIA0KIC8qDQpAQCAtMTIzLDEyICsxMjIsOCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX3N0dWJfb3BzID0gew0KIA0KIHN0YXRp
YyBpbnQgX19pbml0IGRtYV9mZW5jZV9pbml0X3N0dWIodm9pZCkNCiB7DQotCWRtYV9mZW5jZV9p
bml0KCZkbWFfZmVuY2Vfc3R1YiwgJmRtYV9mZW5jZV9zdHViX29wcywNCi0JCSAgICAgICAmZG1h
X2ZlbmNlX3N0dWJfbG9jaywgMCwgMCk7DQotDQotCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5B
QkxFX1NJR05BTF9CSVQsDQotCQkmZG1hX2ZlbmNlX3N0dWIuZmxhZ3MpOw0KLQ0KKwlkbWFfZmVu
Y2VfaW5pdCgmZG1hX2ZlbmNlX3N0dWIsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEwsIDAsIDAp
Ow0KKwlzZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZG1hX2ZlbmNl
X3N0dWIuZmxhZ3MpOw0KIAlkbWFfZmVuY2Vfc2lnbmFsKCZkbWFfZmVuY2Vfc3R1Yik7DQogCXJl
dHVybiAwOw0KIH0NCkBAIC0xNjAsMTYgKzE1NSw5IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9m
ZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIoa3RpbWVfdCB0aW1lc3RhbXApDQogCWlmIChmZW5j
ZSA9PSBOVUxMKQ0KIAkJcmV0dXJuIE5VTEw7DQogDQotCWRtYV9mZW5jZV9pbml0KGZlbmNlLA0K
LQkJICAgICAgICZkbWFfZmVuY2Vfc3R1Yl9vcHMsDQotCQkgICAgICAgJmRtYV9mZW5jZV9zdHVi
X2xvY2ssDQotCQkgICAgICAgMCwgMCk7DQotDQotCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5B
QkxFX1NJR05BTF9CSVQsDQotCQkmZmVuY2UtPmZsYWdzKTsNCi0NCisJZG1hX2ZlbmNlX2luaXQo
ZmVuY2UsICZkbWFfZmVuY2Vfc3R1Yl9vcHMsIE5VTEwsIDAsIDApOw0KKwlzZXRfYml0KERNQV9G
RU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKTsNCiAJZG1hX2ZlbmNl
X3NpZ25hbF90aW1lc3RhbXAoZmVuY2UsIHRpbWVzdGFtcCk7DQotDQogCXJldHVybiBmZW5jZTsN
CiB9DQogRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKTsNCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
