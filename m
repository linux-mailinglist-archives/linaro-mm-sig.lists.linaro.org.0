Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ4NGQJ9wmnqdAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 13:01:06 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C7521307CF5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 13:01:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CF793F903
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 12:01:03 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lists.linaro.org (Postfix) with ESMTPS id 90D9A3F903
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 12:01:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=eIyEu0jK;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.161.46 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-67c641dfaceso829594eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1774353660; x=1774958460; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6xGeDSaplrfa0s0FkTnYgpWTfeJHarWr6HfnS+Tx8gc=;
        b=eIyEu0jKqVae/dmctN380XzDMGGIOxCTRF/Z9XXgHyno5jPG1knkdMhY54mkhK32J1
         j0NrVqy9OMNZkJVJjggoVD5/iOunSejQB8GLwDaszhKjAKg3SwmKPQVFI84KXI3BvglZ
         ztF+OGimNhDvItZO500PyFXGoN8R+5sgKCpSsk5ybLIr3kD+g+VVqfJ7YEQrzdLay4Ua
         SvOUX9KEnCAWk8uXXYem1N6L5r7egsd6P+HEquvr9VBDIkxBBCOJyMTnokpmkvy+UKvU
         r7mhPWZmIev+Qmz5FfehxvkDz7wCCTTHNCqqo1EjfbbV/pN+ZY7lu4X/2R0DWBhyFKpX
         X0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774353660; x=1774958460;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6xGeDSaplrfa0s0FkTnYgpWTfeJHarWr6HfnS+Tx8gc=;
        b=gZ2aNoCO60laFWdBFZZFnN3Tg5+Z/7yBpqzMlkB/SjMAHKtdr+EAPszMbOmd7SOvA4
         28NZlh5CtF2SXgzXe2bqAyl+vSQ9CzODn2uAor73aIkM/4lsW4gYixhAZYHr/wxD6Wzs
         6VQeoleq4ixJaDtYKnw6U+uZN7Q7zFStSeeUmVlZNXjt57GJrHhgoo8iwLH63J3BDm8P
         dcOCNZYnj/Fh1SZ5I+uBd72hbJDb5Yli1StDb9O0+viRdepOYj0gHRlO2kdXpYhGMqIL
         O/ITmCJQ6Bmih7m6SmeGYyHVhWtO408PBWfnmMeIQrsAG/MfjAf0+TpYWOXRiFGzTGuw
         wEJA==
X-Forwarded-Encrypted: i=1; AJvYcCVVa253J3NNM9B/706/L7RgHCXH91Aco5+hc6GHB16yHPGnKwjNDddtIp00opKU1le4nyW8vWSvKcDABRsb@lists.linaro.org
X-Gm-Message-State: AOJu0YycNfv3gclrH9EepjvUqh998tkXU7bYxEC3sG0FeJ4zQzyoi6H5
	UY2DsTXSmedp1qm8Og7ii9ay57+UahwI45OwoOmuqZ4qH7hhG6RieoGZ552ASCocw8M=
X-Gm-Gg: ATEYQzyenyzjflz2zoEps6etzZMUllZg8Gbmn5ivWIW5u+j0xT+MbPpwmdMjN6stx9/
	IR4SS/DsRmVjPpmfiznNYf4XHS3pFgW+aQIv5qr+y2gomVw58UKamnDF4Yf9qfjluIQqt+yKisw
	9dGM07DD8/4V5h3JcH4PwdzNGsALIHZ8pzCSylWVURoYx56Qe0Il//RmWzCJhMylw+8TGjX00/j
	zRjZ+kL7OlmArLO9iLB4v51smXEo4ofJkZu1Qf5W628afVDiooEWNHpPZZfn1PALhHgj6KozCK0
	6I8x8dg8Hb9Z8qT0+sXHl/NkmOvFPv30V5Eqn5ng2qCwWH+qBWQrx9vwQiuhon+iOCyFRHN9P9e
	mGhgZEjdMAv2L9olv5orPkpw31ziGHvJ0ZTD21UCrKhYSFzVLk2F0D0fENQx8fDnD1bvHHnXtj/
	4aYy+da40N6S7ysTDCZyUGaZe86UNOjxkOHaS1VI76Z6DkyvPtl4aTTSYxdtUqw7q+k8kLEW4JW
	jAMlNnX
X-Received: by 2002:a05:6820:174b:b0:67d:f88f:d83d with SMTP id 006d021491bc7-67df88fef36mr1271317eaf.29.1774353659590;
        Tue, 24 Mar 2026 05:00:59 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85335402sm138526236d6.25.2026.03.24.05.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 05:00:58 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w50RN-00000000GV5-3aCE;
	Tue, 24 Mar 2026 09:00:57 -0300
Date: Tue, 24 Mar 2026 09:00:57 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Mostafa Saleh <smostafa@google.com>
Message-ID: <20260324120057.GC8437@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <ablV_f_l7wD2m63E@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ablV_f_l7wD2m63E@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: IPQNPRTXP33RBMO5XJQD6BCFZVQDFBGF
X-Message-ID-Hash: IPQNPRTXP33RBMO5XJQD6BCFZVQDFBGF
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IPQNPRTXP33RBMO5XJQD6BCFZVQDFBGF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.945];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C7521307CF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMDE6MjQ6MTNQTSArMDAwMCwgTW9zdGFmYSBTYWxlaCB3
cm90ZToNCg0KPiBPbiB0aGUgb3RoZXIgaGFuZCwgZm9yIHJlc3RyaWN0ZWQtZG1hLCB0aGUgbWVt
b3J5IGRlY3J5cHRpb24gaXMgZGVlcA0KPiBpbiB0aGUgRE1BIGRpcmVjdCBtZW1vcnkgYWxsb2Nh
dGlvbiBhbmQgdGhlIERNQSBBUEkgY2FsbGVycyAoZm9yIGV4DQo+IHZpcnRpbyBkcml2ZXJzKSBh
cmUgY2x1ZWxlc3MgYWJvdXQgaXQgYW5kIGNhbuKAmXQgcGFzcyBhbnkgYXR0cnMuDQo+IE15IHBy
b3Bvc2FsIHdhcyBzcGVjaWZpYyB0byByZXN0cmljdGVkLWRtYSBhbmQgd29u4oCZdCB3b3JrIGZv
ciB5b3VyIGNhc2UuDQoNCkhvdyBpcyB0aGlzIGFueSBkaWZmZXJlbnQgZnJvbSBDQz8NCg0KSWYg
dGhlIGRldmljZSBjYW5ub3QgZG1hIHRvICJlbmNyeXB0ZWQiIG1lbW9yeSwgd2hhdGV2ZXIgdGhh
dCBtZWFucw0KZm9yIHlvdSwgdGhlbiB0aGUgRE1BIEFQSToNCiAtIE1ha2VzIGRtYSBhbGxvYyBj
b2hlcmVudCByZXR1cm4gImRlY3J5cHRlZCIgbWVtb3J5LCBhbmQgdGhlIGJ1aWx0DQogICBpbiBt
YXBwaW5nIG9mIGNvaGVyZW50IG1lbW9yeSBrbm93cyBhYm91dCB0aGlzDQogLSBNYWtlcyBkbWFf
bWFwX3h4eCB1c2UgU1dJT1RMQiB0byBib3VuY2UgdG8gZGVjcnlwdGVkIG1lbW9yeQ0KDQpUaGVy
ZSBpcyBubyBuZWVkIGZvciBzb21ldGhpbmcgbGlrZSB2aXJ0aW8gZHJpdmVycyB0byBiZSBhd2Fy
ZSBvZg0KYW55IG9mIHRoaXMuDQoNCk9uIHRoZSBvdGhlciBoYW5kIGlmIHRoZSBkcml2ZXIgZGVs
aWJlcmF0ZWx5IGFsbG9jYXRlcyBkZWNyeXB0ZWQNCm1lbW9yeSB3aXRob3V0IHVzaW5nIERNQSBB
UEkgYWxsb2MgY29oZXJlbnQgdGhlbiBpdCBrbm93cyBpdCBkaWQgaXQNCmFuZCBjYW4gcGFzcyB0
aGUgZmxhZyB0byBtYXAgaXQuDQoNCj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlIGtlcm5lbCBzaG91
bGQgaGF2ZSBhIG1vcmUgc29saWQsIHVuaWZpZWQgbWV0aG9kDQo+IGZvciBpZGVudGlmeWluZyBh
bHJlYWR5LWRlY3J5cHRlZCBtZW1vcnkgaW5zdGVhZC4gUGVyaGFwcyB3ZSBuZWVkIGENCj4gd2F5
IGZvciB0aGUgRE1BIEFQSSB0byBuYXRpdmVseSByZWNvZ25pemUgdGhlIGVuY3J5cHRpb24gc3Rh
dGUgb2YgYQ0KPiBwaHlzaWNhbCBwYWdlICh3b3JraW5nIGFsb25nc2lkZSBmb3JjZV9kbWFfdW5l
bmNyeXB0ZWQoZGV2KSksIHJhdGhlcg0KPiB0aGFuIHJlbHlpbmcgb24gY2FsbGVyLXByb3ZpZGVk
IGF0dHJpYnV0ZXM/DQoNCkRlZmluYXRlbHkgbm90LCB3ZSBkbyBub3Qgd2FudCB0aGUgRE1BIEFQ
SSBpbnNwZWN0aW5nIHRoaW5ncyBsaWtlDQp0aGlzLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
