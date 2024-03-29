Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF108927DB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 Mar 2024 00:36:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE30243F41
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Mar 2024 23:36:29 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lists.linaro.org (Postfix) with ESMTPS id 096CC43F41
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Mar 2024 23:36:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=V9K6B7RZ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so1820019276.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Mar 2024 16:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1711755387; x=1712360187; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z3ws0GiqfaPCvaP9VcCCnewH75CZLc5KkLizkP97z2M=;
        b=V9K6B7RZlt9H49O4kFLYeqmx4QGczAt0BCS2esXa1gdlYXxU6GNoE+H2NzAiWPEnn7
         Nrx5wnHYEjs6TA1kpXzauvXYm9+TeLDtr8yMwydssJW4GYaGMB/hJNYgQEokbHyXq3/6
         IcCh0oQv83eMupSon9tilHieTUx7iH7coGZJJI22zjmplLMlca18XUQ8jBfXXRV4cYbc
         k9u6aoCPTY0dvCkg9N2bCodppICmN1IrE8mPV4BjpLLW0Bsjd7vPCOftHwfJwsQ8VeqH
         dUf3STsADwafP9hQIFVMjAabHTTDQ+jmmgLrlXOaNGnPbL4ocLn19HJoWjXzJJCkiYuQ
         rgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711755387; x=1712360187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3ws0GiqfaPCvaP9VcCCnewH75CZLc5KkLizkP97z2M=;
        b=ny2+NuA+PJCbxXjF9IGRTFdthm/Nc4DzAVxYZCXngJeRTGHsEJdt1K4YUSgxqcLsWj
         pieFJxgpNy6OFdQs9JvNMiSaR8B7Q8d2XeDR/A0Wa47pM4wXoCVsqTWJVNVIkgt1gn5h
         NNF4k4xHk8Wjgg8UNgBdOCJ0UR7+GmnUZQJ55cXs3d7AeXwsRhnoPowS8vYOJLvh9rPw
         BUGZWdhXD2smA5joApzwOQhvllSP6rRPDEgIhb8OuYSmgt0hTtmdtLHTTB7IOuoE4CCh
         azqnXt5ulCtdolMnuvGG8vdf79NbP9KWC0r6vF6icZOS08AIBghSFhrAnAq+5uOKEKfT
         8zAw==
X-Forwarded-Encrypted: i=1; AJvYcCVpAiOQ7jpF6LUX0i63VeFYrwYqnZD5AZdhV+TeDnOyWF2yR/vtnr1kOek7b1mpUBkOyOL9paxBiIttL3mBDsAPDpvWDtyTE36YguOA7eU=
X-Gm-Message-State: AOJu0YxJsEzQRsyb2ngAHnVw5Fl7oU2iIJXL8fGvc4bqzkjuRjugpU4n
	PvpsiaylDjD4JL5tLf7PLHah9KMePSu/ptzkmdlmzqzs+Sx6U4G3p70a/MbumgWzJ8GFSOD3jAu
	Zalpstw+3YuDZ8Zvj920EjaNTvJU9mjOafyBf
X-Google-Smtp-Source: AGHT+IGJk7NU8MrL8Rai4C8fdDlc24klJyWnbefpAnU4Fv6NNUTsRsocqC1LxHZ94PST37mhkloThVc9PuLt5FEG9B4=
X-Received: by 2002:a25:f912:0:b0:dc7:494e:ff33 with SMTP id
 q18-20020a25f912000000b00dc7494eff33mr2512234ybe.7.1711755387188; Fri, 29 Mar
 2024 16:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240327022903.776-1-justinjiang@vivo.com>
In-Reply-To: <20240327022903.776-1-justinjiang@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 29 Mar 2024 16:36:15 -0700
Message-ID: <CABdmKX1swVO1=6cs+CW_g2g4g7woB5-Ks1gBzCA+iLcvpLmkvQ@mail.gmail.com>
To: Zhiguo Jiang <justinjiang@vivo.com>
X-Rspamd-Queue-Id: 096CC43F41
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.175:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: H3YSR33FJXAVVOLPT7I44X54V67Z2BV4
X-Message-ID-Hash: H3YSR33FJXAVVOLPT7I44X54V67Z2BV4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3YSR33FJXAVVOLPT7I44X54V67Z2BV4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgMjYsIDIwMjQgYXQgNzoyOeKAr1BNIFpoaWd1byBKaWFuZyA8anVzdGluamlh
bmdAdml2by5jb20+IHdyb3RlOg0KPg0KPiBUaGUgaXNzdWUgaXMgYSBVQUYgaXNzdWUgb2YgZG1h
YnVmIGZpbGUgZmQuIFRocm9naHQgZGVidWdnaW5nLCB3ZSBmb3VuZA0KPiB0aGF0IHRoZSBkbWFi
dWYgZmlsZSBmZCBpcyBhZGRlZCB0byB0aGUgZXBvbGwgZXZlbnQgbGlzdGVuZXIgbGlzdCwgYW5k
DQo+IHdoZW4gaXQgaXMgcmVsZWFzZWQsIGl0IGlzIG5vdCByZW1vdmVkIGZyb20gdGhlIGVwb2xs
IGxpc3QsIHdoaWNoIGxlYWRzDQo+IHRvIHRoZSBVQUYoVXNlLUFmdGVyLUZyZWUpIGlzc3VlLg0K
Pg0KPiBUaGUgVUFGIGlzc3VlIGNhbiBiZSBzb2x2ZWQgYnkgY2hlY2tpbmcgZG1hYnVmIGZpbGUt
PmZfY291bnQgdmFsdWUgYW5kDQo+IHNraXBwaW5nIHRoZSBwb2xsIG9wZXJhdGlvbiBmb3IgdGhl
IGNsb3NlZCBkbWFidWYgZmlsZSBpbiB0aGUNCj4gZG1hX2J1Zl9wb2xsKCkuIFdlIGhhdmUgdGVz
dGVkIHRoaXMgc29sdmVkIHBhdGNoIG11bHRpcGxlIHRpbWVzIGFuZA0KPiBoYXZlIG5vdCByZXBy
b2R1Y2VkIHRoZSB1YWYgaXNzdWUuDQo+DQoNCkhpIFpoaWd1bywNCg0KV2hhdCBpcyB0aGUgbW9z
dCByZWNlbnQga2VybmVsIHZlcnNpb24geW91J3ZlIHNlZW4gdGhlIGJ1ZyBvbj8NCg0KWW91IGFy
ZSBjbG9zaW5nIHRoZSBkbWFidWYgZmQgZnJvbSBhbm90aGVyIHRocmVhZCB3aGlsZSBpdCBpcyBz
dGlsbA0KcGFydCBvZiB0aGUgZXBvbGwgaW50ZXJlc3QgbGlzdD8NCg0KVGhhbmtzLA0KVC5KLg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
