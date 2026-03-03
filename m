Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNkFLcdKp2n2gQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 21:55:35 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 437E41F7040
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 21:55:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91F623F9AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 20:55:33 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id B409F3F9AF
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 20:55:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=Nly7S5Vy;
	dmarc=pass (policy=reject) header.from=google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9358dd7f79so953389066b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Mar 2026 12:55:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772571330; cv=none;
        d=google.com; s=arc-20240605;
        b=DWlHGGAN9gDoxv7zWEbKrf/vftoIhFwLF2L318ddsaffABaW5/aJ9ZlN0o90lxepEP
         Dk6Z4e6LqGONM7OAWuXGy6aQimcOMVdRX3J2sCmi5/F4oPrK6DbM20XkXOqMn35JGZby
         lSzgg+EGu4/PKwRUtnJjV474JZ6XNc4yDuKOFq1OQAAH4jDweMkALiI2ArVVdCsqx/Pj
         KKvtzILO5VARZOjQ8Kcd+rU2AjajN3sb4OeNJpFgea4K6tjuuOpeNM8ZH+NRHA75/Ihk
         pcrpMCvSjPSqjIMJACnwykVXcI18a5IquMRxy0l5KLDU3az6gf+fjdgTeWdfAfm2wnqw
         AtgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        fh=9v3wK4RPXVVsmwL4EI4A7c5RHeFvuzyWN4Zmp3eu3Gw=;
        b=fFN9le6HNSlMCRAoQnL8Q39VHm6Onf6S8+Y18AtEsMliOUek9bCtkmNYAcBoNFDzxe
         GmS1JrSrmWXvBtjrrJ5GzO/G2EfHT2rIqWvJaec/t9+JLGEZeZxCLzRZkAGUl7imCVPS
         KavR2EvAGo9jnN3QIg1kFOPGMfpkIzL49gDQVXd5V3oX0N8nV4IEj6Gwxs6Gc9RO3jsv
         c5i0k8Ry2cOsNmvkXZIMSwdbteiOe0XGf2gega6rFyMu9RyEmLTIr6K0A/bOSLliJtKv
         pS+j4GHpc5q/7qPwSSKthdq1q5s6s5+ihdkH93g77NAUvvf6OLyNQLSJlU9y4EZ8rF8u
         kVVA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772571330; x=1773176130; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        b=Nly7S5Vyn6ZWVHEbHe4jdwVz2SRq4Zev7fMfAcErctxdiYr1tp78rnU3lUKRKV62be
         J7aTNUeFf3Ts7yvMEzVN9XTHBFwuHtGOePBJON3lpc1OerGF9xte9UJ0ndkij5jZzA1W
         9HZ92CzNrWYYWZIO9WcfCbC3gBVFq7OraYr0XEoJ0MU6Id7jEserFGo1cXjhGH0UJ6Pj
         Dd5BOG3E3UKZPPW5chesLNQ+0+HjtrA3wwIUOvt9I0slGfwkUCGuzICGlkfOjIYWyvVA
         swlR1MTKGGWYLkbcR/hAzrgm/0r654QEc7QO+vUJLHb6RmIJXOLRwvU0RL1BWaksYVmx
         vDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772571330; x=1773176130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        b=S82tcoOP/0rr8LGIfkqSOlDOyfTqmr/Ln2rdTki00xeUVYe56yseqxeL9cdqq6uEec
         DzwJqVYPhCTD8/6WlcTbuxWoiFGK70Tx6EwwxroLLRGmd/rMVN2pgu5JS5pPAWFe7DqF
         gfEpSJ9bYuiYhzKmnqa+RAlOlZnpRixioVICHddk4TlG/h5YqBtlc68mF3QYC97w/fDR
         DYMQiiu8hx568RTX1Pfkp++bFzhSKut8jD1CSnmIhkhRqzjl/MUxTuepyiwY+RMwrvj5
         iH29+qlqG06gunuO+dlakO8FALObcovImQjIl0mKtBgLd79+5x/TTCkedugKvjkPW6Qw
         SeFg==
X-Forwarded-Encrypted: i=1; AJvYcCV0J51h4NkC6uH4WyxyV5ESiLwnY/bGTsEyWuvL8rrO3S8s37uvkMcudXCAFdNfudZvt3ChUkosD7m/4g9N@lists.linaro.org
X-Gm-Message-State: AOJu0YzGcxvvqxqsdm+Ux0hsByQKW8t92ntnrUvez2DSBtwPr6ObXbOk
	vzY0/SKpMX2TSUfQ2vPEteS67X1YYNMGGit0fZP42bVrTp0jHvAS6eDRouceNShMvj1/Y/D3MwY
	LwJaC3PHszLjfBZTp2jnJZz425stPheliNc3rGpc=
X-Gm-Gg: ATEYQzy3IETu6k73vnykw3Ue208JsFPLijzftwH5DXLwjxIvtJfdNproT8kZpE7MrwP
	L59VMOTIj3ojlr2Uir3b8MRVms6MfjGQ96erzhQTw5i3z3Cazhdytt3c2mC9DLRsljStuQLwumX
	bDTBoozN/MIJy6028qxXOjiZPdT7Es3ChNXVtFOWJkXhFxSLWbUV3d1wOTOKJ/H9ACJgbF+l216
	lZxvqIByAMyZ1NipkaBL/s8LrcNl1iZz/wINEA32IcpasZKtEhULp2+yoMFfTi6RMtC3zeejyYU
	8lanzrAxt/fQQ1s+/ewPvNIOY+6qVkU0aoz9
X-Received: by 2002:a17:907:3eaa:b0:b87:117f:b6f9 with SMTP id
 a640c23a62f3a-b937636cd7amr1077404066b.8.1772571329176; Tue, 03 Mar 2026
 12:55:29 -0800 (PST)
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
In-Reply-To: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 3 Mar 2026 12:55:17 -0800
X-Gm-Features: AaiRm50eZ6b1R9zR4BWk_SQv0E5klHORf7__0-5ZUwkb8RwaEPVqJM-v_erZHak
Message-ID: <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
To: Albert Esteve <aesteve@redhat.com>
X-Spamd-Bar: ----
Message-ID-Hash: VACNDKT4FC7MPSUGESO4S5OCQ4QDGCWI
X-Message-ID-Hash: VACNDKT4FC7MPSUGESO4S5OCQ4QDGCWI
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, echanude@redhat.com, mripard@redhat.com, John Stultz <john.stultz@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/6] dma-buf: heaps: add coherent reserved-memory heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VACNDKT4FC7MPSUGESO4S5OCQ4QDGCWI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 437E41F7040
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.926];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMywgMjAyNiBhdCA0OjM04oCvQU0gQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUBy
ZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGhlYXAg
ZHJpdmVyIHRvIGV4cG9zZSBEVCBub27igJFyZXVzYWJsZQ0KPiAic2hhcmVkLWRtYS1wb29sIiBj
b2hlcmVudCByZWdpb25zIGFzIGRtYS1idWYgaGVhcHMsIHNvIHVzZXJzcGFjZSBjYW4NCj4gYWxs
b2NhdGUgYnVmZmVycyBmcm9tIGVhY2ggcmVzZXJ2ZWQsIG5hbWVkIHJlZ2lvbi4NCg0KSnVzdCBh
IG5pdCBoZXJlOiBNaWdodCBiZSBnb29kIHRvIHByb3ZpZGUgc29tZSBoaWdoZXIgbGV2ZWwgY29u
dGV4dCBhcw0KdG8gd2h5IHRoaXMgaXMgd2FudGVkLCBhbmQgd2hhdCBpdCBlbmFibGVzLg0KDQpB
bHNvLCAic2hhcmVkLWRtYS1wb29sIiBpcyBhbHNvIHVzZWQgZm9yIENNQSByZWdpb25zLCBzbyBp
dCBtaWdodCBiZQ0KdW5jbGVhciBpbml0aWFsbHkgaG93IHRoaXMgaXMgZGlmZmVyZW50IGZyb20g
dGhlIENNQSBoZWFwICh5b3UgZG8NCm1lbnRpb24gbm9uLXJldXNhYmxlLCBidXQgdGhhdCdzIGEg
cHJldHR0eSBzdWJ0bGUgZGV0YWlsKS4NCg0KTWlnaHQgYmUgZ29vZCB0byBhZGQgc29tZSBvZiB0
aGUgcmF0aW9uYWxlIHRvIHRoZSBwYXRjaCBhZGRpbmcgdGhlDQpoZWFwIGltcGxlbWVudGF0aW9u
IGFzIHdlbGwgc28gaXQgbWFrZXMgaXQgaW50byB0aGUgZ2l0IGhpc3RvcnkuDQoNCnRoYW5rcw0K
LWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
