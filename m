Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA55CB5D3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:26:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAC603F9AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:26:33 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 49D433F9B4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=bPD9GI15;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so179075e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455857; x=1766060657; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oYku39UephPzH87bV5o7gFOD8YTXLIOvx7ykqyQPsdg=;
        b=bPD9GI154zk/a1PS1ZauEOSP8ECCy6tmlhBh5u7WDM3ybXniNbngRoq66KZOX45M1b
         ZFqbC79vVxRqAuYmb99uwuhmgcf3FLAYpQ5eSFsdxg9MZWO6R5dPHSjI90dRi+tmsgcF
         uZdi9+vNK6fzYUCn78Uqp2pq3EzT6MRILLyUsCnRwiuUHxC0s3R+URWdZMrV1xoCfi6w
         KiRg091YxW8VyibsWkPpdyocaEcQu2J0DCqyRQROdBZ4pgV+JRZh3H5L+8rNLh/MvFmN
         GgxVm9Phbmlc0hYqq4WUVrZONhK+vqYVlnfoxzdZDMGMLGJzhvTTVj4af1iZGANYWi7u
         WBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455857; x=1766060657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oYku39UephPzH87bV5o7gFOD8YTXLIOvx7ykqyQPsdg=;
        b=MPAVwN3tekMkA9QDZLM4yrbgadUMk90pTD2G2SBMu0HNfzH8OihXktnR6/vLmBz0u/
         vH2H8uK7q1Asyfq7HAzmBxn4E7iLOpqruxMwVszndykPZjUG58S9Ck26i4qV8JfZ92J/
         88iEtWoQbn+N86LRwWQ/gDAaCKPIjQsi+PyBT3hNUcTeKXmnceavbN6SHRGBQV5W8cqd
         UfutWFPoOSo7xYuwAM0Jv4XZA4iDlNsxL1fVYmOL9aK3DgxYrpG69x+BYSt1l2R36VUq
         /ohk3BwcOfhgO9AhJkozi3+KA84ACu7GFFwYxCj5di/ewS9080emw79xY0FAIyleqk2O
         vayw==
X-Forwarded-Encrypted: i=1; AJvYcCVe01+ut+0/p32vD4olL5u68rcOMv5betNPm1Q9sQo1lTlQ/eHlca2yLI+MspRM0RH/+uyMYD31PZnFHZk9@lists.linaro.org
X-Gm-Message-State: AOJu0YxNK+L/7cUloxekcO+uhO15eAiph8YgRuBq3RuX4ExCEqRiAU4/
	vz0d2PkTbqgsmjaLIbEiEya+WwQc3fslAzxk96D8x6vHm+jbm45sMZwp
X-Gm-Gg: AY/fxX7M7hFjUKUWrs216kwe8H9Q4avanYNvsJwLBAoaE9VPYKDU8P9ElXiiJxo9dsp
	D3ocOMIyP2IBS86seDR+AdkuAqwX/QIlFv+TNsrp3HCiLPhzwnjOiUw4RRUagGXbqDv7LGIXRUw
	7VlXL6/QrOhKacWUn0Zr9OQL5mljGZctC6ZST4F7CzW3e+UGEkUg3wwUk37PqXCVtafmvfzBgog
	4E/83sE7ss738Fh8Ox9Qy20Tjfb/ZRholb/uoM7UUTPyNgEq1+Nj4tfibFpijB5HMpCGAuMhcoJ
	kw6UBVhPYrAHUUCbNToZdxl6XQyTZdQ7KNJ9fvs48kUbM4l5OlZeWlGk8rbaVQ2SDCKgCPSHXGx
	FHrPAYR9woo3X8yOQcFB7TmUdTniU679jCzelEQH4jtBbGz8Ut25+Q/E7B5SoT/RgFWmY898Hpn
	pxEE6hjNdRm7/4TXK3g9fo632GOql+mEvgBjE=
X-Google-Smtp-Source: AGHT+IGFmkpbOj40NXr2kAYDhZLKuQD2WNIEnQh1NoJbEoelz2+0s7vsqtoYbSLROSWYxTm9bn5NzQ==
X-Received: by 2002:a05:600c:811a:b0:471:786:94d3 with SMTP id 5b1f17b1804b1-47a8380695emr45289525e9.22.1765455857158;
        Thu, 11 Dec 2025 04:24:17 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:39 +0100
Message-ID: <20251211122407.1709-9-christian.koenig@amd.com>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
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
X-Rspamd-Queue-Id: 49D433F9B4
X-Spamd-Bar: ----
Message-ID-Hash: ZG4HZAMMZHRFKQ56HTNOIAZT6KH6OSYO
X-Message-ID-Hash: ZG4HZAMMZHRFKQ56HTNOIAZT6KH6OSYO
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 08/19] dma-buf: use inline lock for the dma-fence-chain
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZG4HZAMMZHRFKQ56HTNOIAZT6KH6OSYO/>
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
Ynl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KUmV2aWV3ZWQtYnk6IFBoaWxp
cHAgU3Rhbm5lciA8cGhhc3RhQGtlcm5lbC5vcmc+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMgfCAzICstLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNoYWluLmgg
ICB8IDEgLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0p
DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCmluZGV4IGE4YTkwYWNmNGYzNC4uYTcwNzc5
MmI2MDI1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMNCkBAIC0yNDUsNyArMjQ1LDYg
QEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFp
biwNCiAJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqcHJldl9jaGFpbiA9IHRvX2RtYV9mZW5jZV9j
aGFpbihwcmV2KTsNCiAJdWludDY0X3QgY29udGV4dDsNCiANCi0Jc3Bpbl9sb2NrX2luaXQoJmNo
YWluLT5sb2NrKTsNCiAJcmN1X2Fzc2lnbl9wb2ludGVyKGNoYWluLT5wcmV2LCBwcmV2KTsNCiAJ
Y2hhaW4tPmZlbmNlID0gZmVuY2U7DQogCWNoYWluLT5wcmV2X3NlcW5vID0gMDsNCkBAIC0yNjEs
NyArMjYwLDcgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2No
YWluICpjaGFpbiwNCiAJCQlzZXFubyA9IG1heChwcmV2LT5zZXFubywgc2Vxbm8pOw0KIAl9DQog
DQotCWRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2NoYWluX29wcywg
JmNoYWluLT5sb2NrLA0KKwlkbWFfZmVuY2VfaW5pdDY0KCZjaGFpbi0+YmFzZSwgJmRtYV9mZW5j
ZV9jaGFpbl9vcHMsIE5VTEwsDQogCQkJIGNvbnRleHQsIHNlcW5vKTsNCiANCiAJLyoNCmRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggNjhjM2MxZTQxMDE0Li5kMzljZTdhMmU1OTkgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQorKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtNDYsNyArNDYsNiBAQCBzdHJ1Y3QgZG1hX2ZlbmNl
X2NoYWluIHsNCiAJCSAqLw0KIAkJc3RydWN0IGlycV93b3JrIHdvcms7DQogCX07DQotCXNwaW5s
b2NrX3QgbG9jazsNCiB9Ow0KIA0KIA0KLS0gDQoyLjQzLjANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
