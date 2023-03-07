Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3289C6AD500
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Mar 2023 03:49:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C07353F092
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Mar 2023 02:49:08 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lists.linaro.org (Postfix) with ESMTPS id B01003EBAF
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Mar 2023 02:48:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=bC6kQALS;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5384ff97993so221640977b3.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Mar 2023 18:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678157329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgt5jS4yhQSzCPdn/ZYUqLkl8CzdntpQ4aotvK0s7Ps=;
        b=bC6kQALSLNuqRTQaZ9igs0e7tU+DTMVX5l5fByB2rDw3UpbJvuu4T4oK5oVM5Rk5Ll
         8tNu6u+ARj5BDUkLjlpb/lWKave+lwglVLoJW+jFM8RpDgJA9W+2vfXnvqiMxMoXdefi
         iO34NjNBfN1UcOL7SAPpSeMHim7rP8rzFEMbuNPyEV1Giw+C9U5DhMRNvd0bryLVE8XZ
         Wun1sSNfTcMaxK5PpcAjejMKFzAwJ3WFKA63gcj+m7bPbfebZ+imgMZQgeLBHFjyZeip
         Lb+g+O93DLWbhXJLzekN1UG4Qe6St9jVVW7AMlNiDNko/G5KKb3jh3T6GLWsUSX+d2Qr
         YrEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678157329;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lgt5jS4yhQSzCPdn/ZYUqLkl8CzdntpQ4aotvK0s7Ps=;
        b=IBGxaJM9r+rDgVSqVfo2OgDF3UKbfD2vpHVx0ARSJQ+s+k8FLHKnciEQz/rf3o/KXW
         GeelbzcsREuJwbXc/UHueY8Ky0sOLn56bbie1nPeDPfQ019kTXgluat7CzPvSXPglPAO
         wup4udQ0a84mpyjazyHlp8bXSwUyKUKLWV6Bjwb1/MigBzkzJwVuj2BNB6/nXtnwoGs9
         QAqWVbHis542wnGdA0uK47ZEpHWLlfxnvpz2KU9SI4uDW3+5EkzxLSNczChFNkwrLDYd
         SzrNA2GWIfeT/gZt7LFC6hr33ZwF6tHIW/a46xfv8IPHEXvZrrq79qDLXOxuhml6U4ej
         A2kA==
X-Gm-Message-State: AO0yUKU/binAO7TnmTozmn3qTxR+YA17LWLUW70SeqL6F/JhtGBpSE+B
	Y16H+4n8YCZySsPQfGwVLWqddlsOjrEgeBi+jr7o
X-Google-Smtp-Source: AK7set+7qSth69cARYvLTy3vreAuG4eBzkkkrdpMtT+rT9KG8bg3ULr3mNo/gsLruekyoNHGRNGr/PNwa95c+Mbf36Q=
X-Received: by 2002:a81:b604:0:b0:52f:2695:5d05 with SMTP id
 u4-20020a81b604000000b0052f26955d05mr6829568ywh.3.1678157329171; Mon, 06 Mar
 2023 18:48:49 -0800 (PST)
MIME-Version: 1.0
References: <20230306165143.1671-1-afd@ti.com>
In-Reply-To: <20230306165143.1671-1-afd@ti.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 6 Mar 2023 18:48:38 -0800
Message-ID: <CANDhNCrzi+9BszTj+9v9t6cHOcxv=4C1yQZnZZ-_7FWoxwAd5A@mail.gmail.com>
To: Andrew Davis <afd@ti.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B01003EBAF
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.175:from]
Message-ID-Hash: RRVIKEWHUDYJSZGKQ7RX7DAOWXQ4GTUH
X-Message-ID-Hash: RRVIKEWHUDYJSZGKQ7RX7DAOWXQ4GTUH
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: cma_heap: Check for device max segment size when attaching
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RRVIKEWHUDYJSZGKQ7RX7DAOWXQ4GTUH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgNiwgMjAyMyBhdCA4OjUy4oCvQU0gQW5kcmV3IERhdmlzIDxhZmRAdGkuY29t
PiB3cm90ZToNCj4NCj4gQWx0aG91Z2ggdGhlcmUgaXMgdXN1YWxseSBub3Qgc3VjaCBhIGxpbWl0
YXRpb24gKGFuZCB3aGVuIHRoZXJlIGlzIGl0IGlzDQo+IG9mdGVuIG9ubHkgYmVjYXVzZSB0aGUg
ZHJpdmVyIGZvcmdvdCB0byBjaGFuZ2UgdGhlIHN1cGVyIHNtYWxsIGRlZmF1bHQpLA0KPiBpdCBp
cyBzdGlsbCBjb3JyZWN0IGhlcmUgdG8gYnJlYWsgc2NhdHRlcmxpc3QgZWxlbWVudCBpbnRvIGNo
dW5rcyBvZg0KPiBkbWFfbWF4X21hcHBpbmdfc2l6ZSgpLg0KDQpIZXkgQW5kcmV3IQ0KICBUaGFu
a3MgZm9yIHNlbmRpbmcgdGhpcyBvdXQhDQoNClNvICp3aHkqIGlzIGl0ICJjb3JyZWN0IGhlcmUg
dG8gYnJlYWsgc2NhdHRlcmxpc3QgZWxlbWVudCBpbnRvIGNodW5rcw0Kb2YgIGRtYV9tYXhfbWFw
cGluZ19zaXplKCkuIiA/DQoNCj4gVGhpcyBtaWdodCBjYXVzZSBzb21lIGlzc3VlcyBmb3IgdXNl
cnMgd2l0aCBtaXNiZWhhdmluZyBkcml2ZXJzLiBJZg0KPiBiaXNlY3RpbmcgaGFzIGxhbmRlZCB5
b3Ugb24gdGhpcyBjb21taXQsIG1ha2Ugc3VyZSB5b3VyIGRyaXZlcnMgYm90aCBzZXQNCj4gZG1h
X3NldF9tYXhfc2VnX3NpemUoKSBhbmQgYXJlIGNoZWNraW5nIGZvciBjb250aWd1b3VzbmVzcyBj
b3JyZWN0bHkuDQoNCldoeSBpcyB0aGlzIGNoYW5nZSB3b3J0aCB0aGUgcmlzaz8gKElmIHRoaXMg
aXMgcmVhbGx5IGxpa2VseSB0byBicmVhaw0KZm9sa3MsIHNob3VsZCB3ZSBtYXliZSBwcm92aWRl
IHdhcm5pbmdzIGluaXRpYWxseSBpbnN0ZWFkPyBNYXliZQ0KZmFsbGluZyBiYWNrIHRvIHRoZSBv
bGQgY29kZSBpZiB3ZSBjYW4gY2F0Y2ggdGhlIGZhaWx1cmU/KQ0KDQpJIGRvbid0IHJlYWxseSBv
YmplY3QgdG8gdGhlIGNoYW5nZSwganVzdCB3YW50IHRvIG1ha2Ugc3VyZSB0aGUgY29tbWl0DQpt
ZXNzYWdlIGlzIG1vcmUgY2xlYXIgb24gd2h5IHdlIHNob3VsZCBtYWtlIHRoaXMgY2hhbmdlLCB3
aGF0IHRoZQ0KYmVuZWZpdCB3aWxsIGJlIGFsb25nIHdpdGggdGhlIHBvdGVudGlhbCBkb3duc2lk
ZXMuDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
