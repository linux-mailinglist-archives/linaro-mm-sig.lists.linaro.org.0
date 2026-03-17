Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KG5C+1g5mkxvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CF627431140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:22:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5DD4404EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:22:51 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id CCD143F760
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 13:24:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=d3mHgPRL;
	spf=pass (lists.linaro.org: domain of smostafa@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=smostafa@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4852ef20fe8so58995e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Mar 2026 06:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1773753858; x=1774358658; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zWZeNHlOMbvwVmHsivYMTEHjYjPNUndT05044cKL2Xs=;
        b=d3mHgPRLTApw35UDzjURO8pk1lfQsmy2xWfpAvYSe1oayE5dDgLpVBz/6dmToow+Ph
         vpo0vHfAnA8ztnZvHIebrPFMQU2wHvvdSbg2gJei3+cwoMXb3XrJd3+LuI4HueMkXCwn
         g9/wCujpUbc0AgAoSspsaRK78KIdxUQBW+GqTmMQhfZZIpW/T6Q69tOi9k433sdjwOo6
         z7jRLW+v4RNlGtPflaVkKTPoKdgRiQ0SQYFHogmjlr5dIsoPxI0D9YszAcRNlrWql8RJ
         FfVENARgWv1EM2e7skTO4tV9V6IpyMqJcyyh2hRCuxQYSqsWMQ8YEgZ5Qfy5tip0Xh8O
         ucbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773753858; x=1774358658;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zWZeNHlOMbvwVmHsivYMTEHjYjPNUndT05044cKL2Xs=;
        b=Lrk5KBDurDwiE0JJdj7CRsNNB+yunztolDkqDP2KEureLlsXp0H2NlL5KeqsTfEVqt
         ajFntPboIn+ifFwxwYq+wzZ4JM8guAbN+0GqvHFnHTtf2sgCbbO6AKMfjI+xEXIpg1LO
         bmG+DREpcja1k3DqW55hWE+F1zyOX8hFkAqQstgG3xJE81cc0BNgAMg2iVYw3AZtyy+g
         OKlzpxRgbNH1cuSpFqcb7DGzgznqtJHC0LbFUhkSHRvCTscF749v/ibPwnupd4jqmd7/
         gJloGjlCmqApyynuzgCk/cQoV30nm5iZKq6SoVoHrY9EfyrWia1l0erF4j/g/y5LUeRz
         0nWA==
X-Forwarded-Encrypted: i=1; AJvYcCWU6RCmEZVTM1OSWOsWp6qOMwDuDrNrI2/kZvT5JCoebUmjraPSSy/CeEUMNwbiX2+HgJ3o5j92BVBzHY1p@lists.linaro.org
X-Gm-Message-State: AOJu0YyyIymXoF+NKraGmwfEUcuU3HbeGJb6hPCEa3YI8erJyJMDC2z+
	ygQvLDCU9xkhk7j5LiboebArPH8BHTiim7iVKf/rUiZwGAZxfeOJV39uTY4xSsXhWA==
X-Gm-Gg: ATEYQzzQJB7QqglwBoXthqGkocPB7Fg12qqhq5U83OfRy43a7yr0OmV8CpOxm85+aKW
	yo4W7WYxfIQRZDnkvj8oufoDeA0T8RjAtnzPhmqDynpaXbkp9pkpMGj11HuP6+Q2fShdUpiwrlr
	HrwAftY3ezsfsJU6GRdyXDfL/PfRYo3ohMGYQ2fbSSlI8LafUN8cdi0O93UN14kuo6TB+25G69K
	iwdHkk8yRsrzjHitUWQLMoRFujQesohgyYsKMko2bC86vXXInk/b3vIPkirln4veboEzXZEPqjN
	FBz1PPfcKNZsvDkREcBW08Vb0GBizZ7cgaNDAcofcQbY16qR+Z0pdMN4xqq/cEa6QN3W41QvZp0
	fPjjMMozSDc8iBbqwgaMT7F8KsrOmdEi6yYqm9uHP+gBs7l8uNBFk51W4Gx2RrlYVutlLz1gvaQ
	QCb2/O+gvApzMbNsdWBcjJwQzaqSpuKJTThRRr8blDTH7KrWQrJhCUvse8
X-Received: by 2002:a05:600c:4e45:b0:485:b6e4:9808 with SMTP id 5b1f17b1804b1-485b6e49f7bmr773775e9.1.1773753857226;
        Tue, 17 Mar 2026 06:24:17 -0700 (PDT)
Received: from google.com (54.95.38.34.bc.googleusercontent.com. [34.38.95.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eae3322sm58975315e9.10.2026.03.17.06.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 06:24:16 -0700 (PDT)
Date: Tue, 17 Mar 2026 13:24:13 +0000
From: Mostafa Saleh <smostafa@google.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <ablV_f_l7wD2m63E@google.com>
References: <20260305123641.164164-1-jiri@resnulli.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305123641.164164-1-jiri@resnulli.us>
X-Spamd-Bar: ---
X-MailFrom: smostafa@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JEN7NUASJI3XCH5TARHUJZSHV72WNP46
X-Message-ID-Hash: JEN7NUASJI3XCH5TARHUJZSHV72WNP46
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:21:52 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEN7NUASJI3XCH5TARHUJZSHV72WNP46/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	DATE_IN_PAST(1.00)[819];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[smostafa@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.996];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CF627431140
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgSmlyaSwNCg0KT24gVGh1LCBNYXIgMDUsIDIwMjYgYXQgMDE6MzY6MzlQTSArMDEwMCwgSmly
aSBQaXJrbyB3cm90ZToNCj4gRnJvbTogSmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KPiAN
Cj4gQ29uZmlkZW50aWFsIGNvbXB1dGluZyAoQ29DbykgVk1zL2d1ZXN0cywgc3VjaCBhcyBBTUQg
U0VWIGFuZCBJbnRlbCBURFgsDQo+IHJ1biB3aXRoIGVuY3J5cHRlZC9wcm90ZWN0ZWQgbWVtb3J5
IHdoaWNoIGNyZWF0ZXMgYSBjaGFsbGVuZ2UNCj4gZm9yIGRldmljZXMgdGhhdCBkbyBub3Qgc3Vw
cG9ydCBETUEgdG8gaXQgKG5vIFRESVNQIHN1cHBvcnQpLg0KPiANCj4gRm9yIGtlcm5lbC1vbmx5
IERNQSBvcGVyYXRpb25zLCBzd2lvdGxiIGJvdW5jZSBidWZmZXJpbmcgcHJvdmlkZXMgYQ0KPiB0
cmFuc3BhcmVudCBzb2x1dGlvbiBieSBjb3B5aW5nIGRhdGEgdGhyb3VnaCBkZWNyeXB0ZWQgbWVt
b3J5Lg0KPiBIb3dldmVyLCB0aGUgb25seSB3YXkgdG8gZ2V0IHRoaXMgbWVtb3J5IGludG8gdXNl
cnNwYWNlIGlzIHZpYSB0aGUgRE1BDQo+IEFQSSdzIGRtYV9hbGxvY19wYWdlcygpL2RtYV9tbWFw
X3BhZ2VzKCkgdHlwZSBpbnRlcmZhY2VzIHdoaWNoIGxpbWl0cw0KPiB0aGUgdXNlIG9mIHRoZSBt
ZW1vcnkgdG8gYSBzaW5nbGUgRE1BIGRldmljZSwgYW5kIGlzIGluY29tcGF0aWJsZSB3aXRoDQo+
IHBpbl91c2VyX3BhZ2VzKCkuDQo+IA0KPiBUaGVzZSBsaW1pdGF0aW9ucyBhcmUgcGFydGljdWxh
cmx5IHByb2JsZW1hdGljIGZvciB0aGUgUkRNQSBzdWJzeXN0ZW0NCj4gd2hpY2ggbWFrZXMgaGVh
dnkgdXNlIG9mIHBpbl91c2VyX3BhZ2VzKCkgYW5kIGV4cGVjdHMgZmxleGlibGUgbWVtb3J5DQo+
IHVzYWdlIGJldHdlZW4gbWFueSBkaWZmZXJlbnQgRE1BIGRldmljZXMuDQo+IA0KPiBUaGlzIHBh
dGNoIHNlcmllcyBlbmFibGVzIHVzZXJzcGFjZSB0byBleHBsaWNpdGx5IHJlcXVlc3QgZGVjcnlw
dGVkDQo+IChzaGFyZWQpIG1lbW9yeSBhbGxvY2F0aW9ucyBmcm9tIHRoZSBkbWEtYnVmIHN5c3Rl
bSBoZWFwLg0KPiBVc2Vyc3BhY2UgY2FuIG1tYXAgdGhpcyBtZW1vcnkgYW5kIHBhc3MgdGhlIGRt
YS1idWYgZmQgdG8gb3RoZXINCj4gZXhpc3RpbmcgaW1wb3J0ZXJzIHN1Y2ggYXMgUkRNQSBvciBE
Uk0gZGV2aWNlcyB0byBhY2Nlc3MgdGhlDQo+IG1lbW9yeS4gVGhlIERNQSBBUEkgaXMgaW1wcm92
ZWQgdG8gYWxsb3cgdGhlIGRtYSBoZWFwIGV4cG9ydGVyIHRvIERNQQ0KPiBtYXAgdGhlIHNoYXJl
ZCBtZW1vcnkgdG8gZWFjaCBpbXBvcnRpbmcgZGV2aWNlLg0KDQpJIGhhdmUgYmVlbiBsb29raW5n
IGludG8gYSBzaW1pbGFyIHByb2JsZW0gd2l0aCByZXN0cmljdGVkLWRtYVsxXSBhbmQNCnRoZSBp
bmFiaWxpdHkgb2YgdGhlIERNQSBBUEkgdG8gcmVjb2duaXplIHRoYXQgYSBibG9jayBvZiBtZW1v
cnkgaXMNCmFscmVhZHkgZGVjcnlwdGVkLg0KDQpIb3dldmVyLCBpbiB5b3VyIGNhc2UsIGFkZGlu
ZyBhIG5ldyBhdHRyIOKAnERNQV9BVFRSX0NDX0RFQ1JZUFRFROKAnSB3b3Jrcw0Kd2VsbCBhcyBk
bWEtYnVmIG93bnMgdGhlIG1lbW9yeSwgYW5kIGlzIGJvdGggcmVzcG9uc2libGUgZm9yIHRoZQ0K
c2V0X21lbW9yeV9kZWNyeXB0ZWQoKSBhbmQgcGFzc2luZyB0aGUgRE1BIGF0dHJzLg0KDQpPbiB0
aGUgb3RoZXIgaGFuZCwgZm9yIHJlc3RyaWN0ZWQtZG1hLCB0aGUgbWVtb3J5IGRlY3J5cHRpb24g
aXMgZGVlcA0KaW4gdGhlIERNQSBkaXJlY3QgbWVtb3J5IGFsbG9jYXRpb24gYW5kIHRoZSBETUEg
QVBJIGNhbGxlcnMgKGZvciBleA0KdmlydGlvIGRyaXZlcnMpIGFyZSBjbHVlbGVzcyBhYm91dCBp
dCBhbmQgY2Fu4oCZdCBwYXNzIGFueSBhdHRycy4NCk15IHByb3Bvc2FsIHdhcyBzcGVjaWZpYyB0
byByZXN0cmljdGVkLWRtYSBhbmQgd29u4oCZdCB3b3JrIGZvciB5b3VyIGNhc2UuDQoNCkkgYW0g
d29uZGVyaW5nIGlmIHRoZSBrZXJuZWwgc2hvdWxkIGhhdmUgYSBtb3JlIHNvbGlkLCB1bmlmaWVk
IG1ldGhvZA0KZm9yIGlkZW50aWZ5aW5nIGFscmVhZHktZGVjcnlwdGVkIG1lbW9yeSBpbnN0ZWFk
LiBQZXJoYXBzIHdlIG5lZWQgYQ0Kd2F5IGZvciB0aGUgRE1BIEFQSSB0byBuYXRpdmVseSByZWNv
Z25pemUgdGhlIGVuY3J5cHRpb24gc3RhdGUgb2YgYQ0KcGh5c2ljYWwgcGFnZSAod29ya2luZyBh
bG9uZ3NpZGUgZm9yY2VfZG1hX3VuZW5jcnlwdGVkKGRldikpLCByYXRoZXINCnRoYW4gcmVseWlu
ZyBvbiBjYWxsZXItcHJvdmlkZWQgYXR0cmlidXRlcz8NCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI2MDMwNTE3MDMzNS45NjM1NjgtMS1zbW9zdGFmYUBnb29nbGUuY29tLw0K
DQpUaGFua3MsDQpNb3N0YWZhDQoNCg0KPiANCj4gSmlyaSBQaXJrbyAoMik6DQo+ICAgZG1hLW1h
cHBpbmc6IGludHJvZHVjZSBETUFfQVRUUl9DQ19ERUNSWVBURUQgZm9yIHByZS1kZWNyeXB0ZWQg
bWVtb3J5DQo+ICAgZG1hLWJ1ZjogaGVhcHM6IHN5c3RlbTogYWRkIHN5c3RlbV9jY19kZWNyeXB0
ZWQgaGVhcCBmb3IgZXhwbGljaXRseQ0KPiAgICAgZGVjcnlwdGVkIG1lbW9yeQ0KPiANCj4gIGRy
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIHwgMTAzICsrKysrKysrKysrKysrKysr
KysrKysrKysrLS0NCj4gIGluY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaCAgICAgICAgIHwgICA2
ICsrDQo+ICBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWEuaCAgICAgICAgICB8ICAgMyArLQ0KPiAg
a2VybmVsL2RtYS9kaXJlY3QuaCAgICAgICAgICAgICAgICAgfCAgMTQgKysrLQ0KPiAgNCBmaWxl
cyBjaGFuZ2VkLCAxMTcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tIA0K
PiAyLjUxLjENCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
