Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC/dC3aCwmlneQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 13:24:22 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AD830828F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 13:24:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 971753F683
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 12:24:20 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6E7023F683
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 12:24:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=C5MU0bfl;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.42 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-899eabc5292so52592546d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 05:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1774355058; x=1774959858; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MbJdAPBjjvkAIehxkYzkMUXQO8EVBsVDqYb4hAUTKqI=;
        b=C5MU0bflE06SFHT71fw9Nn4Sk5i9fJ4N+5c1HfPdJaAfNcaLk766HJ8AwLnIFhorFh
         Hn58mR+ItCiJl1g2f63OGDSW09H+6NMxhRkFHBDOVDJcYwinyxd7d05Q/4l1qUbMmHaX
         r6+ctjYrBV2qJ6cbQIy5YEv8c5w6i+YkgqRpLHVRoOTLF95QIcRq6tD9bL5APJHGZXTR
         0/rqT4HOHh/CsXNReH36v7DjqtbcnbkGK0Hho5u8Ja7vQZQnMWeSGc1yUrpgelBfDJW/
         rS6A2DRd/kPSOOf0sSGvc2BN7SLbB+bsaZryzBhR1chV5IocbybIHX/+pZl3RFSN2s1x
         odsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774355058; x=1774959858;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbJdAPBjjvkAIehxkYzkMUXQO8EVBsVDqYb4hAUTKqI=;
        b=KJ9WKTsrTwLKL2sx/xR6NJUjUjgx/WN5Hf0Lq1MViAr571mgJOIxvYI0VcLAAxIend
         uu6t+m40bqEHH/M5wZ4/jEr/DE+ZkCSUsYF9rrdFV8i8BT93733a8wkSCP15GKmuzV2r
         VbGNcPu4iK3okL4ZLXWnYsBy9nR5wEnrgbCMcfNnvNe/R8QDWYMLYvnR+XspJhdb2ShC
         CA/5D7do/Ufkl+64IhAoCOvKg7UmmI8aydlqzBRXeQ9/YwPGiu5kogPKfzb8npnsZx9o
         DlsMhnD+Sxej/Eg3e+gtamUfb6U/oluJXBS7RhT4q1D0EPBekY1AxT0yMl9L3XnU25cS
         NnOg==
X-Forwarded-Encrypted: i=1; AJvYcCWZ95jz//sAn55kTInMtrQjpr+rIPyEI4DejF2ZidiF7RJfGUc6FgLPoQa7s+6uL7yhZwQ6mAGjczJxMWpi@lists.linaro.org
X-Gm-Message-State: AOJu0YycSQCJms7/fqqrL5Vhjq7FlCz+H8WJ+hRw722EAQnqBizM9lpt
	GdoTlth7xCyCeRFtXwqkrIXRMye7NOyE/sJ1BEWnDNlRI2X8GODl7UbaMpfGRZVyV/8=
X-Gm-Gg: ATEYQzxt6PtVzejUmvQg1ivBsjtJPTaHBU/aES+QB2KwDKMA+zpfrNnkebt3Xym0lay
	UEKK5lISJpQMzz21taCcL9vumquXcpBCb28Qk4amuX0cf3xCb2SthGDsQXHi5zBatAsJZ1s7kUH
	NZ11d0ge3DZTnp5nQecpFPgw26FWeOwyA2HIMYyMqlBS0fOYWjh9hYZo88D4WolN/pv0lqepVCx
	M8utZ5WESQ9lQD31cHtVAh1Y7UCsTeEsGsbpNGEAS53Cs1n2g46kISGtlh9m2G0g+dqfJHgWGTT
	VuHX6WV6tZJBuLasJ1ouXN4dEVY4pqabaYIbQmMrygJt46RBaKQMAdNDjzwvs4jtBWp8ppyvJGL
	Axjdj2pxqihHzTHRIjG/LtFc3NWZFUJit9usv6DXS0D3d/MpiFoRiJyl2hbKCWGsB6Y6VcmcQl+
	3F/bEonsoAoC8a2AxG5i7xkD+IO5LAbnnp3Qa0vyNSACujjd0g7NoEgwDhrHl2457oDxFpng==
X-Received: by 2002:a05:6214:27c5:b0:899:fd64:1b72 with SMTP id 6a1803df08f44-89c85a5bebbmr256219296d6.41.1774355057813;
        Tue, 24 Mar 2026 05:24:17 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c8536afb4sm134637326d6.42.2026.03.24.05.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 05:24:17 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w50nw-00000000Gf5-2Wfl;
	Tue, 24 Mar 2026 09:24:16 -0300
Date: Tue, 24 Mar 2026 09:24:16 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Mostafa Saleh <smostafa@google.com>
Message-ID: <20260324122416.GD8437@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <ablV_f_l7wD2m63E@google.com>
 <20260324120057.GC8437@ziepe.ca>
 <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: THCYIAWPZH2WXNTJINVHKJYVAKQ42BQC
X-Message-ID-Hash: THCYIAWPZH2WXNTJINVHKJYVAKQ42BQC
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/THCYIAWPZH2WXNTJINVHKJYVAKQ42BQC/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.967];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:email,ziepe.ca:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C1AD830828F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MTQ6MzZQTSArMDAwMCwgTW9zdGFmYSBTYWxlaCB3
cm90ZToNCj4gT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MDHigK9QTSBKYXNvbiBHdW50aG9y
cGUgPGpnZ0B6aWVwZS5jYT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUdWUsIE1hciAxNywgMjAyNiBh
dCAwMToyNDoxM1BNICswMDAwLCBNb3N0YWZhIFNhbGVoIHdyb3RlOg0KPiA+DQo+ID4gPiBPbiB0
aGUgb3RoZXIgaGFuZCwgZm9yIHJlc3RyaWN0ZWQtZG1hLCB0aGUgbWVtb3J5IGRlY3J5cHRpb24g
aXMgZGVlcA0KPiA+ID4gaW4gdGhlIERNQSBkaXJlY3QgbWVtb3J5IGFsbG9jYXRpb24gYW5kIHRo
ZSBETUEgQVBJIGNhbGxlcnMgKGZvciBleA0KPiA+ID4gdmlydGlvIGRyaXZlcnMpIGFyZSBjbHVl
bGVzcyBhYm91dCBpdCBhbmQgY2Fu4oCZdCBwYXNzIGFueSBhdHRycy4NCj4gPiA+IE15IHByb3Bv
c2FsIHdhcyBzcGVjaWZpYyB0byByZXN0cmljdGVkLWRtYSBhbmQgd29u4oCZdCB3b3JrIGZvciB5
b3VyIGNhc2UuDQo+ID4NCj4gPiBIb3cgaXMgdGhpcyBhbnkgZGlmZmVyZW50IGZyb20gQ0M/DQo+
ID4NCj4gPiBJZiB0aGUgZGV2aWNlIGNhbm5vdCBkbWEgdG8gImVuY3J5cHRlZCIgbWVtb3J5LCB3
aGF0ZXZlciB0aGF0IG1lYW5zDQo+ID4gZm9yIHlvdSwgdGhlbiB0aGUgRE1BIEFQSToNCj4gPiAg
LSBNYWtlcyBkbWEgYWxsb2MgY29oZXJlbnQgcmV0dXJuICJkZWNyeXB0ZWQiIG1lbW9yeSwgYW5k
IHRoZSBidWlsdA0KPiA+ICAgIGluIG1hcHBpbmcgb2YgY29oZXJlbnQgbWVtb3J5IGtub3dzIGFi
b3V0IHRoaXMNCj4gPiAgLSBNYWtlcyBkbWFfbWFwX3h4eCB1c2UgU1dJT1RMQiB0byBib3VuY2Ug
dG8gZGVjcnlwdGVkIG1lbW9yeQ0KPiA+DQo+ID4gVGhlcmUgaXMgbm8gbmVlZCBmb3Igc29tZXRo
aW5nIGxpa2UgdmlydGlvIGRyaXZlcnMgdG8gYmUgYXdhcmUgb2YNCj4gPiBhbnkgb2YgdGhpcy4N
Cj4gPg0KPiA+IE9uIHRoZSBvdGhlciBoYW5kIGlmIHRoZSBkcml2ZXIgZGVsaWJlcmF0ZWx5IGFs
bG9jYXRlcyBkZWNyeXB0ZWQNCj4gPiBtZW1vcnkgd2l0aG91dCB1c2luZyBETUEgQVBJIGFsbG9j
IGNvaGVyZW50IHRoZW4gaXQga25vd3MgaXQgZGlkIGl0DQo+ID4gYW5kIGNhbiBwYXNzIHRoZSBm
bGFnIHRvIG1hcCBpdC4NCj4gPg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgRE1BIEFQ
SSBjdXJyZW50bHkgZ2V0cyBjb25mdXNlZCBieSB0aGlzOyBpdA0KPiBjYW4gZW5kIHVwIGRvdWJs
ZSBkZWNyeXB0aW5nIHRoZSBtZW1vcnkgb3IgdXNpbmcgdGhlIHdyb25nIGZ1bmN0aW9ucw0KPiBh
cyBtZW50aW9uZWQgaW4gWzFdDQoNCkkgZnVsbHkgYmVsaXZlIHRoZXJlIGFyZSBidWdzLCBidXQg
dGhlIEFQSSBkZXNpZ24gaXMgc291bmQuIElmIHlvdSB1c2UNCnRoZSBjb2hlcmVudCBhbGxvY2F0
aW9ucyBmcm9tIHRoZSBETUEgQVBJIHRoZW4gaXQga25vd3MgZGVjcnlwdGlvbiBoYXMNCmhhcHBl
bmVkIHdoZW4gaXQgZ2VuZXJhdGVzIGEgZG1hX2FkZHJfdCBhbmQgdGhlcmUgc2hvdWxkIGJlIG5v
IGlzc3VlLg0KDQpOb3csIGlmIGRyaXZlcnMgYXJlIHVzaW5nIHRoZSBETUEgQVBJIHdyb25nLCBs
aWtlIHRyeWluZyB0byBkb3VibGUgbWFwDQpjb2hlcmVudCBhbGxvY2F0aW9ucyB0aGVuIHRoZXkg
YXJlIGJyb2tlbi4gSSBhbHNvIHdvdWxkIG5vdCBiZQ0Kc3VycHJpc2VkIHRvIGZpbmQgY2FzZXMg
bGlrZSB0aGlzLg0KDQpKYXNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
