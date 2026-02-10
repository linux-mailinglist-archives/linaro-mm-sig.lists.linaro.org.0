Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJtlIZ+Pi2nYWAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 21:05:51 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F64011EE3C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 21:05:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABBA13F985
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 20:05:49 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 3B4E33F7E6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 20:05:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=bfWFVXQl;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.44 as permitted sender) smtp.mailfrom=jstultz@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6594382a264so8385202a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 12:05:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770753941; cv=none;
        d=google.com; s=arc-20240605;
        b=N6VHhg8AXySLEo11GenvF3u4NskFSSP8yPPAcSRluWoOJL36NHWIAMJOkYTzC3aFYN
         oeSMpmHnScL0Rg21v6P2HdTdGXnMQv6lv9QvlGQHJZk2rwGY8WY5Ghm9ph/9DOxe0GJ7
         nggy9tsYuJUn1ObKAhJRySnxmkGcDqKTtW0rVObPoVIV1YTKnT1NpXwmWWCnQQMqrc1H
         38b7wJ8gK4/1bvy7JVGHzB8EIfQ+p5VRX6xhLWfnMm+xlH9J5i9fNw6uvG5mIwW/mUkT
         bFD07nOVB99AUQxx8BcVLbRoyjI/zwGey9AJ4jAAdVX4vx/Hw3vq9PmWo9lYUh4ttTRD
         0Hlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EUYV2jK4EVNH8IU6ztF+fhRopz1DxZCdX+to/Ge4VzA=;
        fh=7YXYykmDwiGrKukb+sVoFur3Mb2giRgnawxQGVjUT5U=;
        b=OMXAVcxsFRKgkDWKpO4Hl9lqmuoSwU+6kItMWAHarKZE48Ny4mg7cvWFVUrdkMR5Tp
         wXasxpAYFp4QFepA/hG+IGKX6+3QXVG9I6fSaJnenwf2ttw5xmrniGQWZMLsVhnqqy2O
         C9jlDS5koByhTPN5cDtJ4aXmWQFe+2lq2FE7T6d6vY2Kt82etw7jo55RSG6EGpcUsh1q
         u5cGjTHbnek4l8iX0ZLO4uIiqdCxD+2s36Bh4Lo55ozYj/VFOsMgZBqoL7v+Neic9Aq1
         HuW9gLDlPrucPlOhLZrZZ3bjzFcMctrGzSbNTd+kpwOwZejBvxVUHNTmCEzX2bJxIJBV
         1MZg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1770753941; x=1771358741; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EUYV2jK4EVNH8IU6ztF+fhRopz1DxZCdX+to/Ge4VzA=;
        b=bfWFVXQlPU77uV3iy/QcAqr4uXACVt6SsRomM00cnAGKpJ+UOSEUM8ckQhSwIb7dmJ
         dvhNFf7+08do/k3luf0K6Z1gUPZhrdcDVyKkfJ6PjW/cnKL4Dt8EVdwOfo5SeKa13/dv
         zCeZ/FohUxMiiYvxGH6hAeU9a+Tlg96QePCwGJX+TBzWbRq9EjzYkMccXNNSRBiQyNwn
         LjANoM5mzQ8OH5ImKFOZIJ1dY2v066W51wwNWPVzD8SSgt1F6QtJjZK6MXYwtO2x/E/b
         aCVLq9pbBbywYUIUoF3n7Xiv6D0mu80Pj74NlxlpKkwNswSaXJ6HH/RGf/UrMCD2OBm4
         osXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770753941; x=1771358741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EUYV2jK4EVNH8IU6ztF+fhRopz1DxZCdX+to/Ge4VzA=;
        b=dTyp5UnH4GsB7CGYlliXK7d51TpB9cWwcBNOvS9UGYUGchNV3oTWq+t9jTYE9g2fao
         x7SehVi3E+xAjPd5mIYAV6Pger/eAGFOAJWHlTWSGkZ/VFBZ8Fhw0tYjppj77X4JI7sA
         8IMjmMy5mhJgpf/+9mzd8vN8nwvvQR5TVRcxifvZjyp2t6THrex/g4cABIWyZofTAvQW
         b1ElyuVesGSAZ0J9vormCmV1eAnAFZVj0TIa5c2RA8+zRFfWHo6HiG5a6qwMK2Ppt7PQ
         ZVT/aHHCJgUAtw2EUaGjSdR2OHDmO/92FvzLULaX2K0tqsA2p8V9ufp1SjY1thcdpPmt
         uIYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFRX9sPfegEFfvMmN47dzaFxybCVjbZcfmF9Ct9et3KLmOKTpX/pI3XwLKi2bN1pBwGJEHOg1ujpl2J/hv@lists.linaro.org
X-Gm-Message-State: AOJu0YyI2mWmBykJ/uH3Pj/ouCN1Nr6dSvK3G51zJytdSC8nuDGyx7yF
	qukgDYcy3YctNKOdaeGs3wMNuwFsYg5UFuEnUhO8cjfVN5Iz87oX7WPPgMvIvNRHLPUDooKUyDU
	tG7XUApd9aUV54IEQ//sEOU8DmA3VmmHrzCvMCM8=
X-Gm-Gg: AZuq6aLPkdJNecTEekJ/rioAnLVQCZ1qXjO09PTVczPEu30h2wQXdB69ClduNyvUQa8
	gZjiCi6wL6ptso7dMJfo16kxl5HwYGpME+/hcCAKjMSDkz3XPZoI9kE96r5kI3vWo7fYhDbYZL1
	Sv3cr4uZW731kmjlyOLHrFFvS/5IWm9/mYA8JYoxk4nIsHjxGjUi0BF6gXaEwhl3XKRC6QDKi2P
	DY43n6FY7icTTAM+Zc0RfpfoHgzAdAK5pGCi1XAcnaNu+U+plmQrCA7pZiVxfMrcksigtq6S0wk
	wlbvQC9hhPdImOiBgIiyw8DtvtEn3nRwiIwJ
X-Received: by 2002:a17:907:720d:b0:b88:48ba:cd7 with SMTP id
 a640c23a62f3a-b8f6a8e0786mr22320766b.3.1770753940692; Tue, 10 Feb 2026
 12:05:40 -0800 (PST)
MIME-Version: 1.0
References: <20260209153809.250835-1-jiri@resnulli.us> <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <hwdezwktndbm6hoko3rz5lffgfljodegcygzf6rbdf2ferokj6@ftk2uk3rqfdq> <20260210124819.GC12887@unreal>
In-Reply-To: <20260210124819.GC12887@unreal>
From: John Stultz <jstultz@google.com>
Date: Tue, 10 Feb 2026 12:05:28 -0800
X-Gm-Features: AZwV_Qgy-DNinnCzC9ZTU6U_Twqy09ClMg2rE0gJxLuPqw6IHh5sTKTnvXMZwaA
Message-ID: <CANDhNCoaYoe5Ckin9CnZT2LdQJ2K7amBSUS9GBDzbx_1=U9txw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: E7OTON4X6X57E3SZLAN3DSCVLFWCO2G7
X-Message-ID-Hash: E7OTON4X6X57E3SZLAN3DSCVLFWCO2G7
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E7OTON4X6X57E3SZLAN3DSCVLFWCO2G7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,resnulli.us:email,linaro.org:email];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Queue-Id: 0F64011EE3C
X-Rspamd-Action: no action

T24gVHVlLCBGZWIgMTAsIDIwMjYgYXQgNDo0OOKAr0FNIExlb24gUm9tYW5vdnNreSA8bGVvbkBr
ZXJuZWwub3JnPiB3cm90ZToNCj4gT24gVHVlLCBGZWIgMTAsIDIwMjYgYXQgMTA6MDU6MTRBTSAr
MDEwMCwgSmlyaSBQaXJrbyB3cm90ZToNCj4gPiBNb24sIEZlYiAwOSwgMjAyNiBhdCAwOTowODow
M1BNICswMTAwLCBqc3R1bHR6QGdvb2dsZS5jb20gd3JvdGU6DQo+ID4gPk9uIE1vbiwgRmViIDks
IDIwMjYgYXQgNzozOOKAr0FNIEppcmkgUGlya28gPGppcmlAcmVzbnVsbGkudXM+IHdyb3RlOg0K
PiA+ID4+DQo+ID4gPj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KPiA+ID4+
DQo+ID4gPj4gQ3VycmVudGx5IHRoZSBmbGFncywgd2hpY2ggYXJlIHVudXNlZCwgYXJlIHZhbGlk
YXRlZCBmb3IgYWxsIGhlYXBzLg0KPiA+ID4+IFNpbmNlIHRoZSBmb2xsb3ctdXAgcGF0Y2ggaW50
cm9kdWNlcyBhIGZsYWcgdmFsaWQgZm9yIG9ubHkgb25lIG9mIHRoZQ0KPiA+ID4+IGhlYXBzLCBh
bGxvdyB0byBzcGVjaWZ5IHRoZSB2YWxpZCBmbGFncyBwZXItaGVhcC4NCj4gPiA+DQo+ID4gPkkn
bSBub3QgcmVhbGx5IGluIHRoaXMgc3BhY2UgYW55bW9yZSwgc28gdGFrZSBteSBmZWVkYmFjayB3
aXRoIGEgZ3JhaW4gb2Ygc2FsdC4NCj4gPiA+DQo+ID4gPldoaWxlIHRoZSBoZWFwIGFsbG9jYXRl
IGZsYWdzIGFyZ3VtZW50IGlzIHVudXNlZCwgaXQgd2FzIGludGVuZGVkIHRvDQo+ID4gPmJlIHVz
ZWQgZm9yIGdlbmVyaWMgYWxsb2NhdGlvbiBmbGFncyB0aGF0IHdvdWxkIGFwcGx5IHRvIGFsbCBv
ciBhdA0KPiA+ID5sZWFzdCBhIHdpZGUgbWFqb3JpdHkgb2YgaGVhcHMuDQo+ID4gPg0KPiA+ID5J
dCB3YXMgZGVmaW5pdGVseSBub3QgYWRkZWQgdG8gYWxsb3cgZm9yIHBlci1oZWFwIG9yIGhlYXAg
c3BlY2lmaWMNCj4gPiA+ZmxhZ3MgKGFzIHRoaXMgcGF0Y2ggdHJpZXMgdG8gdXRpbGl6ZSBpdCku
IFRoYXQgd2FzIHRoZSBtZXNzIHdlIGhhZA0KPiA+ID53aXRoIElPTiBkcml2ZXIgdGhhdCB3ZSB3
ZXJlIHRyeWluZyB0byBhdm9pZC4NCj4gPiA+DQo+ID4gPlRoZSBpbnRlbnQgb2YgZG1hLWJ1ZiBo
ZWFwcyBpcyB0byB0cnkgdG8gYWJzdHJhY3QgYWxsIHRoZSBkaWZmZXJlbnQNCj4gPiA+ZGV2aWNl
IG1lbW9yeSBjb25zdHJhaW50cyBzbyB0aGVyZSBvbmx5IG5lZWRzIHRvIGJlIGEgW3VzYWdlXSAt
Pg0KPiA+ID5baGVhcF0gbWFwcGluZywgYW5kIG90aGVyd2lzZSB1c2VybGFuZCBjYW4gYmUgZ2Vu
ZXJhbGl6ZWQgc28gdGhhdCBpdA0KPiA+ID5kb2Vzbid0IG5lZWQgdG8gYmUgcmUtd3JpdHRlbiB0
byB3b3JrIHdpdGggZGlmZmVyZW50IGRldmljZXMvbWVtb3J5DQo+ID4gPnR5cGVzLiAgQWRkaW5n
IGhlYXAtc3BlY2lmaWMgYWxsb2NhdGlvbiBmbGFncyBwcmV2ZW50cyB0aGF0DQo+ID4gPmdlbmVy
YWxpemF0aW9uLg0KPiA+ID4NCj4gPiA+U28gaW5zdGVhZCBvZiBhZGRpbmcgaGVhcCBzcGVjaWZp
YyBmbGFncywgdGhlIGdlbmVyYWwgYWR2aWNlIGhhcyBiZWVuDQo+ID4gPnRvIGFkZCBhIHNlcGFy
YXRlIGhlYXAgbmFtZSBmb3IgdGhlIGZsYWcgcHJvcGVydHkuDQo+ID4NCj4gPiBSaWdodCwgbXkg
b3JpZ2luYWwgaWRlYSB3YXMgdG8gYWRkIGEgc2VwYXJhdGUgaGVhcC4gVGhlbiBJIHNwb3R0ZWQg
dGhlDQo+ID4gZmxhZ3MgYW5kIHNlZW1lZCBsaWtlIGEgZ3JlYXQgZml0LiBXYXMgbm90IGF3YXJl
IG9yIHRoZSBoaXN0b3J5IG9yDQo+ID4gb3JpZ2luYWwgaW50ZW50aW9uLiBXb3VsZCBiZSBwcm9i
YWJseSBnb29kIHRvIGRvY3VtZW50IGl0IGZvcg0KPiA+IGZ1dHVyZSBnZW5lcmF0aW9ucy4NCj4g
Pg0KPiA+IFNvIGluc3RlYWQgb2YgZmxhZywgSSB3aWxsIGFkZCBoZWFwIG5hbWVkIHNvbWV0aGlu
Zw0KPiA+IGxpa2UgInN5c3RlbV9jY19kZWNyeXB0ZWQiIHRvIGltcGxlbWVudCB0aGlzLg0KPg0K
PiBJdCBpcyBwcm9ibGVtYXRpYyB0byBleHBvc2UgYSB1c2Vy4oCRdmlzaWJsZSBBUEkgdGhhdCBk
ZXBlbmRzIG9uIGEgbmFtZS4NCj4gU3VjaCBhIGRlc2lnbiBsaW1pdHMgb3VyIGFiaWxpdHkgdG8g
ZXh0ZW5kIHRoZSBmdW5jdGlvbmFsaXR5IGluIHRoZQ0KPiBmdXR1cmUsIHNob3VsZCBuZXcgdXNl
IGNhc2VzIGFyaXNlLg0KDQpZZXMsIGhvdyB1c2VybGFuZCBjaG9vc2VzIGEgaGVhcCBuYW1lIGlz
IGFuIG9wZW4gcHJvYmxlbS4NCg0KIFRoZSBkaWZmaWN1bHR5IGlzIHRoYXQgdXNlcmxhbmQgaXMg
dGhlIG9ubHkgdGhpbmcgdGhhdCBrbm93cyB3aGF0DQpkZXZpY2VzIHRoZSBidWZmZXIgd2lsbCBi
ZSBzaGFyZWQgKGFuZCB0aGlzIGtub3dsZWRnZSBtYXkgYmUNCmluY29tcGxldGUgaWYgdXNlcmxh
bmQgcGFzc2VzIGEgYnVmZmVyIGJldHdlZW4gcHJvY2Vzc2VzKSB3aXRoLCBzbyBpdA0KaGFzIHRv
IHBpY2suICBCdXQgdGhlIGtlcm5lbCBkb2Vzbid0IGdpdmUgaXQgYSB3YXkgdG8gc29sdmUgdGhl
DQpjb25zdHJhaW50cyBvZiB3aGF0IG1lbW9yeSB0eXBlcyB3b3JrIHdpdGggd2hhdCBkZXZpY2Vz
LiBUaGVyZSBoYXZlDQpiZWVuIHNvbWUgcHJvcG9zYWxzIGZvciBkZXZpY2Ugc3lzZnMgZGlyZWN0
b3JpZXMgdG8gaGF2ZSBsaW5rcyB0byBoZWFwDQp0eXBlcyB0aGV5IHN1cHBvcnQsIGJ1dCB0aGF0
IGFsc28gcmVxdWlyZXMgZXZlcnkgZHJpdmVyIHRvIHVuZGVyc3RhbmQNCmV2ZXJ5IGhlYXAgdHlw
ZS4gQW5kIHRoZW4geW91IGdldCB0byB0aGUgZmFjdCB0aGF0IHBlcmZvcm1hbmNlIGlzIHdoYXQN
CmZvbGtzIHJlYWxseSB3YW50LCBub3QgY29tcGF0aWJpbGl0eSBhbmQgdGhhdCBtYXkgcmVxdWly
ZSBzb21lIHN5c3RlbQ0Kc3BlY2lmaWMga25vd2xlZGdlIHRvIGRlY2lkZS4NCg0KVGhlIHdvcmtp
bmcgc29sdXRpb24gcmlnaHQgbm93IGlzIHRvIGhhdmUgdGhlIHN5c3RlbSBwcm92aWRlIGEgIFt1
c2VdDQotPiBbaGVhcF0gbWFwcGluZyBmb3IgYSBzcGVjaWZpYyBzeXN0ZW0uDQoNCkkgdGhpbmsg
b2YgdGhpcyBhcyBzaW1pbGFyIHRvIHRoZSB2ZnMgYW5kIC9ldGMvZnN0YWIuIFNvIC9ob21lLyBt
aWdodA0KYmUgL2Rldi9zZGIxIG9uIG9uZSBkZXZpY2Ugb3IgZGV2L3NkYTEgb24gYW5vdGhlci4g
IFlvdSBuZWVkIHNvbWUNCnN5c3RlbSBzcGVjaWZpYyBjb25maWd1cmF0aW9uLg0KDQpJbiBBbmRy
b2lkLCB0aGlzIG1hcHBpbmcgaXMgZG9uZSBieSBHcmFsbG9jLCBzbyBidWZmZXJzIGFyZSByZXF1
ZXN0ZWQNCmZvciBhIHVzZSBhbmQgdGhlbiBHcmFsbG9jIGRlY2lkZXMgd2hpY2ggaGVhcCB0byBh
bGxvY2F0ZWQgZnJvbS4NCg0KVW5mb3J0dW5hdGVseSB0aGVyZSBkb2Vzbid0IHNlZW0gdG8gYmUg
YSBzaW1pbGFyIHN0YW5kYXJkIGNvbnZlbnRpb24NCmVsc2V3aGVyZS4gIEFuZCBJJ2xsIGFkbWl0
IGV2ZW4gdGhlbiB0aGUgZW51bWVyYXRpb24gb2YgdXNlcy9waXBlbGluZXMNCmluIHNvbWUgZ2Vu
ZXJhbCBmb3JtIGlzIGFsc28gZGlmZmljdWx0IHByb2JsZW0gKGFuZCBpcyBzb21ld2hhdCBtb3Jl
DQpib3VuZGVkIGZvciBBbmRyb2lkKS4NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
