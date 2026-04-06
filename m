Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKquL6QV1GksqwcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Apr 2026 22:20:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 339243A7134
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 06 Apr 2026 22:20:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF7F64044F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Apr 2026 20:20:50 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 20C443F9B4
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Apr 2026 20:20:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=VtZtRHB7;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-488879dcbc3so210085e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Apr 2026 13:20:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775506846; cv=none;
        d=google.com; s=arc-20240605;
        b=bpT9MNmHBgZPbfZCnrRui5ElUN2LVZIZbP9Mqf5Lg2RSW+ndKiT9d6YqojkfeW4Eui
         d+1/6nTMogRN/PDk4W9DcmYuo4j0fSp5mK/Pkq7PvkSXxSy9WpKhCAVZxMbIECPZGUqa
         +ipzFe9jvrCkWcDbhVLOVQ1ju+qRbYsp/EJqRgBwaSrIVQpEkWRO0oYbUUxGCsc1MOYp
         m9UWzkkitxj2GNyXZf3ltOh4Fs4kZEPNStssyf/0WjAwaCC2kXw94y5RUq4SlQhEdHFc
         SRPG4xbMEZqEgUB8yOPLrrYKlkcW3xMkDt381zF6h1SvfDw6FdxhaRaDhlP/k4nFNUJ0
         nynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DAq+hiOQoaI832cP+7lQvu5renHjvWZOnK9BIt/n8bg=;
        fh=sRNStxYF11tNXRyiSv4vYeNouWSgP4SvANIqA5IP6N8=;
        b=F5C3HEcJrN1yX8b0HkIkfjJaSXwujrD+aCADJEEihH/byA/Rg+2uvE92ZjXwyT22lh
         kjna+I6xdBxAxjfr4agAENfPCiylYvkKvVZu4n1UZhNoFRKjz36NDBDShCRSyRob7Xk4
         3ySz++/OP0lGRhvFlLMsYLH/POhEfOYDWPMv3LbhcVtsRAUBFEtVVRxyLDPdV3wq9lYz
         CqNZMa7SVLF/uAD9/m2Sd5uGU4xxaCyLcX88tCRNHrciNRCYFiCGbvRovi9FhQGRQJcG
         77JIk4h3zkDGt3hraHZ1MJS6Hz4CX9bQyviYwhq2IWtxIUnobVCxya0qCYKS1IGtGAmY
         AhzA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1775506846; x=1776111646; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAq+hiOQoaI832cP+7lQvu5renHjvWZOnK9BIt/n8bg=;
        b=VtZtRHB7bNVvO+Pbk4TaEylw8SlmqNZc/ndXSGfTs5fL9J2FscEPYVQMrLM2asFENn
         CYjzWwEJA9bJPeD9amH4/HbHZDgjtHuMcaHIP0gIOZAkxshFFNkf+hMxCDMvfc55Lx/z
         1sioRIP0F3NQ3liU4iu+SHTn6BynGZegzCpPA8PCKV3WLyKiBHAqwGtC1C7+2ihAXT1I
         6d1CeVPXKTHcqXacwsOkIgCEF0qUU+a1++LzsQNhegF+Wi6OK436xRCuDwbfsay5jyKl
         O0ar4qr5N+i1a7uDyFf7hJpX3Mr8HFpObV3X3PKxdMs7fIjyM2UQqPLrSQC7m9lXA/gp
         WIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775506846; x=1776111646;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DAq+hiOQoaI832cP+7lQvu5renHjvWZOnK9BIt/n8bg=;
        b=bxYd5jMW60baTxI2CpCP828AV8LQoJW/i12B1u/KZgECjA359GFJqv0CjfHwJt4DqF
         p8cVJoppdzP6eexDyikbluR7vElta9aFtHupL4ebQJOkZUtQFQ5e8o/v17cGpPNWCf4v
         rLL6H1prsMy6+MldVwZddqO+6wysvXKrC3uUsNRa4np+meMFOG8RTcnjXVlaKpp/WWYm
         BLMjGqLAL5Pex7oM4zMUrGcfGtFxdGdKOw4GRBbVQ1hEDB56fQfPhtfTU3Mk+7yK+Z4c
         2YlUu0osdhxuirHi9z3cNgLmmiA0u+HidkKZUsLX7opwjufjW7IyHF93NW1SlGUHrUrp
         tDXw==
X-Forwarded-Encrypted: i=1; AJvYcCXFSlcVGDAk5dsRR2N7LAXIawl20tOQwyleYFBz+cvtFx3UUkdMRL0zgB3lBAIYsCi66zb7LGS4ICPutdS+@lists.linaro.org
X-Gm-Message-State: AOJu0Yye+JXETiBK5NMzBN426ZkG7aaK3JTyOj0zGcXkRo5UparpzImQ
	/cbqPXCYR/7btpOJtt7N0BKV/Mv6PhgaSHksPjraQxkCfCfoa40aWV5+MwexWVXUcL0BxsYc2Ju
	d4Mn8XabPHQ7cw5eH8Nv9uKjEn8BCPpbLeY34tlF2
X-Gm-Gg: AeBDieuMUH6jgJNLx6OTRb/4PVqJpDC8ILbytugPN9mGx250NKPAHGVNPJKk1Foi9ge
	RcXDZvCBCW6rZT3sWFcamWpwrvRJrjHvwivpVCkVWNhoofikeuQWiUCkHDn9wHfKaEf6q/jPXc0
	MuVM6hoEXwn4kXb9QxQGsCm1gdZdEBB6sG7csLuNgfUAb3Tgi8wsr8SS+ZVxX62CsG5nbOshxzH
	QLNaMAEXj6HuOBpf14Um00VV3BmMierULZHfv5m2HbAQJ984ZDDTqJCDKJoSOc/Q8wbPO6n1lDf
	HkVMVd/4Y6PlPgoeZ61bZNgVzFeC5sYr8L0J9A==
X-Received: by 2002:a05:600c:6b19:b0:477:86fd:fb47 with SMTP id
 5b1f17b1804b1-4889a458061mr2963095e9.8.1775506845674; Mon, 06 Apr 2026
 13:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260402141103.598495-1-jiri@resnulli.us>
In-Reply-To: <20260402141103.598495-1-jiri@resnulli.us>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 6 Apr 2026 13:20:33 -0700
X-Gm-Features: AQROBzBphM-pvVrX6rS78TlEjxwdox4kg-mNa-24N1cUfIDHIUevXFcYB-smPLY
Message-ID: <CABdmKX3N70j8ZZs5DNhx6fhRi=Aa_+2xY1JHcW+uDoaV2+Sngw@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: ----
Message-ID-Hash: SI6NYKPCYGOHWSSZHVGINOBQM5R3RUNX
X-Message-ID-Hash: SI6NYKPCYGOHWSSZHVGINOBQM5R3RUNX
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SI6NYKPCYGOHWSSZHVGINOBQM5R3RUNX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.976];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 339243A7134
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBBcHIgMiwgMjAyNiBhdCA3OjEx4oCvQU0gSmlyaSBQaXJrbyA8amlyaUByZXNudWxs
aS51cz4gd3JvdGU6DQo+DQo+IEZyb206IEppcmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4N
Cj4gRG9jdW1lbnQgdGhlIHN5c3RlbV9jY19zaGFyZWQgZG1hLWJ1ZiBoZWFwIHRoYXQgd2FzIGlu
dHJvZHVjZWQNCj4gcmVjZW50bHkuIERlc2NyaWJlIGl0cyBwdXJwb3NlLCBhdmFpbGFiaWxpdHkg
Y29uZGl0aW9ucyBhbmQNCj4gcmVsYXRpb24gdG8gY29uZmlkZW50aWFsIGNvbXB1dGluZyBWTXMu
DQo+DQo+IFNpZ25lZC1vZmYtYnk6IEppcmkgUGlya28gPGppcmlAbnZpZGlhLmNvbT4NCj4gLS0t
DQo+ICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QgfCA4ICsr
KysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QgYi9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QNCj4gaW5kZXggMDU0NDVj
ODNiNzlhLi41OTE3MzIzOTNlN2QgMTAwNjQ0DQo+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdA0KPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvZG1hLWJ1Zi1oZWFwcy5yc3QNCj4gQEAgLTE2LDYgKzE2LDE0IEBAIGZvbGxvd2luZyBo
ZWFwczoNCj4NCj4gICAtIFRoZSBgYHN5c3RlbWBgIGhlYXAgYWxsb2NhdGVzIHZpcnR1YWxseSBj
b250aWd1b3VzLCBjYWNoZWFibGUsIGJ1ZmZlcnMuDQo+DQo+ICsgLSBUaGUgYGBzeXN0ZW1fY2Nf
c2hhcmVkYGAgaGVhcCBhbGxvY2F0ZXMgdmlydHVhbGx5IGNvbnRpZ3VvdXMsIGNhY2hlYWJsZSwN
Cj4gKyAgIGJ1ZmZlcnMgdXNpbmcgc2hhcmVkIChkZWNyeXB0ZWQpIG1lbW9yeS4gSXQgaXMgb25s
eSBwcmVzZW50IG9uDQo+ICsgICBjb25maWRlbnRpYWwgY29tcHV0aW5nIChDb0NvKSBWTXMgd2hl
cmUgbWVtb3J5IGVuY3J5cHRpb24gaXMgYWN0aXZlDQo+ICsgICAoZS5nLiwgQU1EIFNFViwgSW50
ZWwgVERYKS4gVGhlIGFsbG9jYXRlZCBwYWdlcyBoYXZlIHRoZSBlbmNyeXB0aW9uDQo+ICsgICBi
aXQgY2xlYXJlZCwgbWFraW5nIHRoZW0gYWNjZXNzaWJsZSBmb3IgZGV2aWNlIERNQSB3aXRob3V0
IFRESVNQDQo+ICsgICBzdXBwb3J0LiBPbiBub24tQ29DbyBWTXMgY29uZmlndXJhdGlvbnMsIHRo
aXMgaGVhcCBpcw0KDQoibm9uLUNvQ28gVk0gY29uZmlndXJhdGlvbnMiDQoNCj4gKyAgIG5vdCBy
ZWdpc3RlcmVkLg0KDQpEb2Vzbid0IHNlZW0gbGlrZSB5b3UgbmVlZCB0byB3cmFwIHRoaXMgbGlu
ZS4NCg0Kd2l0aCB0aGF0OiBSZXZpZXdlZC1ieTogVC5KLk1lcmNpZXIgPHRqbWVyY2llckBnb29n
bGUuY29tPg0KDQo+ICsNCj4gICAtIFRoZSBgYGRlZmF1bHRfY21hX3JlZ2lvbmBgIGhlYXAgYWxs
b2NhdGVzIHBoeXNpY2FsbHkgY29udGlndW91cywNCj4gICAgIGNhY2hlYWJsZSwgYnVmZmVycy4g
T25seSBwcmVzZW50IGlmIGEgQ01BIHJlZ2lvbiBpcyBwcmVzZW50LiBTdWNoIGENCj4gICAgIHJl
Z2lvbiBpcyB1c3VhbGx5IGNyZWF0ZWQgZWl0aGVyIHRocm91Z2ggdGhlIGtlcm5lbCBjb21tYW5k
bGluZQ0KDQpFYWNoIHBhcmFncmFwaCBzdGFydGluZyB3aXRoICctJyBjb25mdXNlZCBtZSBmb3Ig
YSBzZWNvbmQgdGhlcmUuIFRob3NlDQphcmVuJ3QgcGFydCBvZiB0aGUgZGlmZi4gOikNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
