Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B9B837950
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 01:36:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0ADE443D3C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jan 2024 00:36:20 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lists.linaro.org (Postfix) with ESMTPS id D6CB33EFCF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jan 2024 00:36:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=ZymW070Q;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.53 as permitted sender) smtp.mailfrom=keescook@chromium.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6dddb927d02so2158793a34.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jan 2024 16:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705970172; x=1706574972; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKixWzqfowMzvUX6r00bx/1VlD3LFsId3tPJIJRuIR0=;
        b=ZymW070QlEGC/15joem8B5oLSrFScZC2KsAACzeIsAjSV8csD0PTKv++G3zst+/dzj
         klND7TLZno1TnAtmVBNWMx3tWWVtWESTDS6oYS/PA+5GtmrAzMAy5MNi65eN/ZuPmF7p
         Dg2pbrrez+JNfk5/WHRzHGig9nyAX7MeaJgvU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705970172; x=1706574972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SKixWzqfowMzvUX6r00bx/1VlD3LFsId3tPJIJRuIR0=;
        b=xMM9+CNLy9oGgjUBfM7TMWh8+UXECyGcnZehXaYpaWMsFf+tHZessS8UAY38MYDavv
         eqS1BDgqB21EiCWHyRbUMcdocOHglfhvuRgEizBVDPCt+80ZaPknVNIav+PT3tldJC/w
         XHEV/tYOA2/t2qjYZg71OcxsYN9wLOzY/5kY7gQXX0r+33wxKXgBR73zzFanUikarbtM
         tOtsd0arRBdDpiAxL8+YYiaowDcdBC0bP/0E9wNyHH0iQUUB7z/qc3TSh01U6+vq31H5
         jxIrEyNWVlHE/iidTRbjmMXpOVTj0bneog4ufJjsqHmxQAikrEvnuhRM83cr431mPW+Q
         aISA==
X-Gm-Message-State: AOJu0YwnpWnN2w6SFq96g9lgUsQFLnEVmkC+z6Blq8C87hDf9hJwS75Z
	ofc4eH0O8WdptkiuqcD1d3KsLtW/N+/SwzkoHcXeDOjZoM5I9A+k4E6wtqf48g==
X-Google-Smtp-Source: AGHT+IHGoYZGs2buOqQkiIhEJDExn82aWCutmrbis2Hs9LbtRGU/qouIkWFMc0AMtn7Yh4iOMq5Tmw==
X-Received: by 2002:a05:6358:719:b0:176:5d0d:4c6a with SMTP id e25-20020a056358071900b001765d0d4c6amr1659265rwj.29.1705970172214;
        Mon, 22 Jan 2024 16:36:12 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id sb12-20020a17090b50cc00b0028cef2025ddsm10440436pjb.15.2024.01.22.16.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 16:36:08 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Date: Mon, 22 Jan 2024 16:26:50 -0800
Message-Id: <20240123002814.1396804-15-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240122235208.work.748-kees@kernel.org>
References: <20240122235208.work.748-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2493; i=keescook@chromium.org;
 h=from:subject; bh=O50T+ehgWO04+/PTwK/XEjtbdWM1siGuxiWx5Y9VWF8=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBlrwgFQ84pwHJOpkJM7cBBjZQ+dyB2q0GyyRoUN
 phvzaNFVByJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZa8IBQAKCRCJcvTf3G3A
 Jju2D/9msHfBekreecuP9d0fYucPYwOuP/5LSP35dnh1uQL9A/+S6Af8H21MOl+me8AiycS0dk2
 0Nd3au8vn2Nl78aIRV+C7DFP3rFOa3KdUfS/qJRRlEE9tAeJXHJECtKEMp7t9CehEJHacXZIT45
 r8trE7qdtUW4JMqG9sya72KThUcsRNHfVbJQQ536OU9zvx/NhCHm1onTJ2C9o3h+1II4GGGKmlJ
 1zJ3W0eVSeM24egFgMxHcqvYy+Cue+A5RfFDwojwaBnfmWhBtXesTBwFJTsQanPGWE9JxbSxsbz
 CglnWiNPjq9pDs31mtBqwR8DgmONGfQIo9NhxiQ+1Cdjx4VWvmPO49vDUmd1yNPDgbj/QxI/cRq
 ARVjAjmWNHxVGH0lTnwUrrDgtkF+R44Iuhdim/nvBSBZrpaG8yrRA+4NFpPtsZOwVdXMSnfI7wQ
 gE0joPsgazTDQFUqzcRtfyqrcvYXIeIiXdh/Y4Ej/km9tQ0/0DLxTbTCqoGtnoSuEVfvCzs+unU
 tfzaCnbjn45fawrtcGUb6pVdFQzPQRUw9P1lmZqDc+GxwioZP4dCvcu/bG0+essTAlw/09sdKqu
 O/ci8K7u1AkUc7NcLes5iGCNf8aWaXBCSkX8vB/mu6PUk7piIN/1FYcQTY+LYW8Hq5cLwHBPmQn wygzmyMo3p0bqsw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D6CB33EFCF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.53:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
Message-ID-Hash: JCLLHJZONBQJBQOMI4EFWRY2WKQSHW6E
X-Message-ID-Hash: JCLLHJZONBQJBQOMI4EFWRY2WKQSHW6E
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Kees Cook <keescook@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15/82] dma-buf: Refactor intentional wrap-around calculation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JCLLHJZONBQJBQOMI4EFWRY2WKQSHW6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW4gYW4gZWZmb3J0IHRvIHNlcGFyYXRlIGludGVudGlvbmFsIGFyaXRobWV0aWMgd3JhcC1hcm91
bmQgZnJvbQ0KdW5leHBlY3RlZCB3cmFwLWFyb3VuZCwgd2UgbmVlZCB0byByZWZhY3RvciBwbGFj
ZXMgdGhhdCBkZXBlbmQgb24gdGhpcw0Ka2luZCBvZiBtYXRoLiBPbmUgb2YgdGhlIG1vc3QgY29t
bW9uIGNvZGUgcGF0dGVybnMgb2YgdGhpcyBpczoNCg0KCVZBUiArIHZhbHVlIDwgVkFSDQoNCk5v
dGFibHksIHRoaXMgaXMgY29uc2lkZXJlZCAidW5kZWZpbmVkIGJlaGF2aW9yIiBmb3Igc2lnbmVk
IGFuZCBwb2ludGVyDQp0eXBlcywgd2hpY2ggdGhlIGtlcm5lbCB3b3JrcyBhcm91bmQgYnkgdXNp
bmcgdGhlIC1mbm8tc3RyaWN0LW92ZXJmbG93DQpvcHRpb24gaW4gdGhlIGJ1aWxkWzFdICh3aGlj
aCB1c2VkIHRvIGp1c3QgYmUgLWZ3cmFwdikuIFJlZ2FyZGxlc3MsIHdlDQp3YW50IHRvIGdldCB0
aGUga2VybmVsIHNvdXJjZSB0byB0aGUgcG9zaXRpb24gd2hlcmUgd2UgY2FuIG1lYW5pbmdmdWxs
eQ0KaW5zdHJ1bWVudCBhcml0aG1ldGljIHdyYXAtYXJvdW5kIGNvbmRpdGlvbnMgYW5kIGNhdGNo
IHRoZW0gd2hlbiB0aGV5DQphcmUgdW5leHBlY3RlZCwgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRo
ZXkgYXJlIHNpZ25lZFsyXSwgdW5zaWduZWRbM10sDQpvciBwb2ludGVyWzRdIHR5cGVzLg0KDQpS
ZWZhY3RvciBvcGVuLWNvZGVkIHVuc2lnbmVkIHdyYXAtYXJvdW5kIGFkZGl0aW9uIHRlc3QgdG8g
dXNlDQpjaGVja19hZGRfb3ZlcmZsb3coKSwgcmV0YWluaW5nIHRoZSByZXN1bHQgZm9yIGxhdGVy
IHVzYWdlICh3aGljaCByZW1vdmVzDQp0aGUgcmVkdW5kYW50IG9wZW4tY29kZWQgYWRkaXRpb24p
LiBUaGlzIHBhdmVzIHRoZSB3YXkgdG8gZW5hYmxpbmcgdGhlDQp3cmFwLWFyb3VuZCBzYW5pdGl6
ZXJzIGluIHRoZSBmdXR1cmUuDQoNCkxpbms6IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMv
NjhkZjM3NTVlMzgzZTZmZWNmMjM1NGE2N2IwOGY5MmYxODUzNjU5NCBbMV0NCkxpbms6IGh0dHBz
Oi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8yNiBbMl0NCkxpbms6IGh0dHBzOi8vZ2l0
aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8yNyBbM10NCkxpbms6IGh0dHBzOi8vZ2l0aHViLmNv
bS9LU1BQL2xpbnV4L2lzc3Vlcy8zNDQgWzRdDQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4NCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KU2lnbmVk
LW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+DQotLS0NCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIHwgNyArKysrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCA4ZmU1YWE2N2IxNjcu
LjM3NDNjNjNhOWI1OSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC0xNDU4LDYgKzE0NTgsOCBAQCBFWFBP
UlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX2VuZF9jcHVfYWNjZXNzLCBETUFfQlVGKTsNCiBpbnQg
ZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqdm1hLA0KIAkJIHVuc2lnbmVkIGxvbmcgcGdvZmYpDQogew0KKwl1bnNpZ25lZCBsb25nIHN1
bTsNCisNCiAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhdm1hKSkNCiAJCXJldHVybiAtRUlOVkFM
Ow0KIA0KQEAgLTE0NjYsMTIgKzE0NjgsMTEgQEAgaW50IGRtYV9idWZfbW1hcChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCiAJCXJldHVybiAtRUlO
VkFMOw0KIA0KIAkvKiBjaGVjayBmb3Igb2Zmc2V0IG92ZXJmbG93ICovDQotCWlmIChwZ29mZiAr
IHZtYV9wYWdlcyh2bWEpIDwgcGdvZmYpDQorCWlmIChjaGVja19hZGRfb3ZlcmZsb3cocGdvZmYs
IHZtYV9wYWdlcyh2bWEpLCAmc3VtKSkNCiAJCXJldHVybiAtRU9WRVJGTE9XOw0KIA0KIAkvKiBj
aGVjayBmb3Igb3ZlcmZsb3dpbmcgdGhlIGJ1ZmZlcidzIHNpemUgKi8NCi0JaWYgKHBnb2ZmICsg
dm1hX3BhZ2VzKHZtYSkgPg0KLQkgICAgZG1hYnVmLT5zaXplID4+IFBBR0VfU0hJRlQpDQorCWlm
IChzdW0gPiBkbWFidWYtPnNpemUgPj4gUEFHRV9TSElGVCkNCiAJCXJldHVybiAtRUlOVkFMOw0K
IA0KIAkvKiByZWFkanVzdCB0aGUgdm1hICovDQotLSANCjIuMzQuMQ0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
