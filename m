Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F887EBF7E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 10:30:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 618EF410E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 09:30:53 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by lists.linaro.org (Postfix) with ESMTPS id DDBE13F0D8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 09:30:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="DM7dCN/F";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-9e623356d5dso726591966b.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 01:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700040637; x=1700645437; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yB7Vx9jRhXPtu5tqEcLUYKJwFbScID9ZtZB3ZSvKBco=;
        b=DM7dCN/Fe/OFV2NBS6z6WTJ8I7Hm2vD4ZvcAbmzcT5n0eMz/EiEkOaRf3I7BX+w792
         lXL3Z3ej4vZb56tT5HV+kbdPmZLUa3UyyeuBaxWrX+qf6e+DuS/ZClfnZKdzxY6XqTHO
         vccst+qGsspYqJGdZjmFlLR7uIdwPiPH18QnDvswj6eTBER/GoRCZ0j+1ln91KQFLg2j
         eKejXQRws4kyxpOqtmOGME0jfVis4nr+uee4p7ivVT7WhVh+tUmoq+U3uGaOaidIT9S/
         jmhn865JJttEwq3Q7D+oLS84gKTK4IiJmLsqz4NXQMdQ1DnmzUjNTEuSbK3kr9Eao3fI
         NLLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700040637; x=1700645437;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yB7Vx9jRhXPtu5tqEcLUYKJwFbScID9ZtZB3ZSvKBco=;
        b=AQZumlgZvIsGqsZAymu4PDURcM5RIcDYa6NXiVfmKYq+35+TJZ5ly7RBB2jK5AUX+k
         hEPkB9ZnAIBC5yV1rLBf/USp3uWpbZy6K8GRlw2+jn4Rti7Cc9rn4LtLLCZkaUPn9AiK
         NrilOejXyBwMrlK6Z0hgn01sZ8/ICPWNizsdFUVzeCNVmjbn4O5Tkln/lloORYxJPo8P
         PtASkZVuAxpVguEwW7wB5v9tXxqtmBygmMZ0xUQ/54RQ9XL7WJonmFm5LefQuyTTKz0V
         qy1e5JnQymFSOvKNULsWlppp0x60wBwJkLcSuUUA7qm9ZfED31qCaAIGrVLtvM+EFqtY
         wH4w==
X-Gm-Message-State: AOJu0Yxh/p7b637LBuWAUayjPAg/9iQYvLNDqbqh8qALlvMqiNXPlXt6
	DeQ5wIwJvebVDi0NLveC36w=
X-Google-Smtp-Source: AGHT+IGSUIO1vf/vS6SCJdIo3iWj+1ibt6jwIe6cS2Zz1J88lLlR4jPJ2yLG0oV0Crvhh3hBAPUrDQ==
X-Received: by 2002:a17:906:d14b:b0:9ad:7890:b4c0 with SMTP id br11-20020a170906d14b00b009ad7890b4c0mr7671598ejb.56.1700040636600;
        Wed, 15 Nov 2023 01:30:36 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1581:a900:e649:e473:229b:cd53])
        by smtp.gmail.com with ESMTPSA id ga33-20020a1709070c2100b0099e12a49c8fsm6880255ejc.173.2023.11.15.01.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 01:30:36 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	faith.ekstrand@collabora.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Wed, 15 Nov 2023 10:30:35 +0100
Message-Id: <20231115093035.1889-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDBE13F0D8
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.45:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 65OT3Q6CUSNMCEQTRQ56TUODYPOAI2QR
X-Message-ID-Hash: 65OT3Q6CUSNMCEQTRQ56TUODYPOAI2QR
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: fix check in dma_resv_add_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/65OT3Q6CUSNMCEQTRQ56TUODYPOAI2QR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyB2YWxpZCB0byBhZGQgdGhlIHNhbWUgZmVuY2UgbXVsdGlwbGUgdGltZXMgdG8gYSBkbWEt
cmVzdiBvYmplY3QgYW5kDQp3ZSBzaG91bGRuJ3QgbmVlZCBvbmUgZXh0cmEgc2xvdCBmb3IgZWFj
aC4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KRml4ZXM6IGEzZjdjMTBhMjY5ZDUgKCJkbWEtYnVmL2RtYS1yZXN2OiBjaGVjayBp
ZiB0aGUgbmV3IGZlbmNlIGlzIHJlYWxseSBsYXRlciIpDQpDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZyAjIHY1LjE5Kw0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAgMiArLQ0K
IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggIHwgMTUgKysrKysrKysrKysrKysrDQogMiBmaWxl
cyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
DQppbmRleCAzOGI0MTEwMzc4ZGUuLmViOGI3MzMwNjViMiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtcmVzdi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KQEAg
LTMwMSw3ICszMDEsNyBAQCB2b2lkIGRtYV9yZXN2X2FkZF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQogDQogCQlkbWFfcmVzdl9saXN0X2VudHJ5
KGZvYmosIGksIG9iaiwgJm9sZCwgJm9sZF91c2FnZSk7DQogCQlpZiAoKG9sZC0+Y29udGV4dCA9
PSBmZW5jZS0+Y29udGV4dCAmJiBvbGRfdXNhZ2UgPj0gdXNhZ2UgJiYNCi0JCSAgICAgZG1hX2Zl
bmNlX2lzX2xhdGVyKGZlbmNlLCBvbGQpKSB8fA0KKwkJICAgICBkbWFfZmVuY2VfaXNfbGF0ZXJf
b3Jfc2FtZShmZW5jZSwgb2xkKSkgfHwNCiAJCSAgICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQob2xk
KSkgew0KIAkJCWRtYV9yZXN2X2xpc3Rfc2V0KGZvYmosIGksIGZlbmNlLCB1c2FnZSk7DQogCQkJ
ZG1hX2ZlbmNlX3B1dChvbGQpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQppbmRleCBlYmU3OGJkM2QxMjEuLmIzNzcy
ZWRjYTJlNiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCisrKyBiL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCkBAIC00OTgsNiArNDk4LDIxIEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCBkbWFfZmVuY2VfaXNfbGF0ZXIoc3RydWN0IGRtYV9mZW5jZSAqZjEsDQogCXJldHVy
biBfX2RtYV9mZW5jZV9pc19sYXRlcihmMS0+c2Vxbm8sIGYyLT5zZXFubywgZjEtPm9wcyk7DQog
fQ0KIA0KKy8qKg0KKyAqIGRtYV9mZW5jZV9pc19sYXRlcl9vcl9zYW1lIC0gcmV0dXJuIHRydWUg
aWYgZjEgaXMgbGF0ZXIgb3Igc2FtZSBhcyBmMg0KKyAqIEBmMTogdGhlIGZpcnN0IGZlbmNlIGZy
b20gdGhlIHNhbWUgY29udGV4dA0KKyAqIEBmMjogdGhlIHNlY29uZCBmZW5jZSBmcm9tIHRoZSBz
YW1lIGNvbnRleHQNCisgKg0KKyAqIFJldHVybnMgdHJ1ZSBpZiBmMSBpcyBjaHJvbm9sb2dpY2Fs
bHkgbGF0ZXIgdGhhbiBmMiBvciB0aGUgc2FtZSBmZW5jZS4gQm90aA0KKyAqIGZlbmNlcyBtdXN0
IGJlIGZyb20gdGhlIHNhbWUgY29udGV4dCwgc2luY2UgYSBzZXFubyBpcyBub3QgcmUtdXNlZCBh
Y3Jvc3MNCisgKiBjb250ZXh0cy4NCisgKi8NCitzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNl
X2lzX2xhdGVyX29yX3NhbWUoc3RydWN0IGRtYV9mZW5jZSAqZjEsDQorCQkJCQkgICAgICBzdHJ1
Y3QgZG1hX2ZlbmNlICpmMikNCit7DQorCXJldHVybiBmMSA9PSBmMiB8fCBkbWFfZmVuY2VfaXNf
bGF0ZXIoZjEsIGYyKTsNCit9DQorDQogLyoqDQogICogZG1hX2ZlbmNlX2xhdGVyIC0gcmV0dXJu
IHRoZSBjaHJvbm9sb2dpY2FsbHkgbGF0ZXIgZmVuY2UNCiAgKiBAZjE6CXRoZSBmaXJzdCBmZW5j
ZSBmcm9tIHRoZSBzYW1lIGNvbnRleHQNCi0tIA0KMi4zNC4xDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
