Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KHXOddh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D404431357
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5372C3F800
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:26:46 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 06AD53F9BB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 12:14:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=HOmXEJ6X;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of smostafa@google.com designates 209.85.160.174 as permitted sender) smtp.mailfrom=smostafa@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-50b6c45781aso664691cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 05:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774354488; cv=none;
        d=google.com; s=arc-20240605;
        b=b7P1bz+6JFRlMKqAk++KPOru8iFhjGch+Cchjx/CuGmasiT/2fO8idWsM8CJ3Fczd6
         aYPR0Bsx+ZVEgdX94NIoMfgqg56Xqxd44IhriKWVbZlh/3knTsVThokl2k9MajaoEd2v
         kZUkRBGdwaqOu2LS8o3SZFxC6IO91CsbMpe7rTLE5JG+nuyDBsRBanRqvMA2N+ckuSmn
         pHX/okBYBRjlXpvyIAzGKw777x6dsTFRHcpquNnbIVSSiFDIYDOuxTs826GW/JcTQ1TV
         VuYYbQ6Tuq8DaIywstYWPud2LG6x9RCrgHBZTP4q6N3pUd23+60q4KiiRhV6IltOSp2o
         ZV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=38JEbVN9/czZUHowiTyQJJi+NFgr4A1LQF8NnXOZQbo=;
        fh=pnqVrV+/lgKm8QGc9RtEumHCP3ZxiE0uF8YP0qIvlyQ=;
        b=MfqS2CTY1US89TeymZE39BxN9zYDTG2FV22OOH/e0yrUupzMw8gHCrwKpnzsKsyt51
         1DNau64kJbst3W7m2RdVkg7FLdpNRUYav7pk55yWGaxquNA/qSQL/k5ZtOUVDTptSr44
         xzza1pBfFT9m3iZPqVuvd1niMPrrSU4QoacEFadik76AqAu58MbiOlUzACaTD+OTrDMc
         H2sB2lKh3sx1dWL1MtQxNuyin7aYsldZsAmXYr2i5OzdnlIwdd9sgzyoEkFP2Ecr/rtd
         8yIJCd1U6q5hbt4wZv+1/Cyvun8+wRWp9vIODLby+s151RQY+DLoeu6PXC04Fo0QJ7ei
         uTXA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1774354488; x=1774959288; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38JEbVN9/czZUHowiTyQJJi+NFgr4A1LQF8NnXOZQbo=;
        b=HOmXEJ6XADDjVcrbq5ez32Axuw0/K0XJ516uPHkhCWP/ucnwaLXQcNUEzk60JnCa6U
         DSYdvb6Os1yHNunrmRjnCwymAzrgtPfibZtcpejWaWEo6hSvEvGa7P/HAo8o6Zq9L1lv
         x9oF9C74SxBWj8OjqdrsrjuG8jgvmEfK86gJ4eTZAWtfPYaWmMS4YbRlaP1Wbch8mf5N
         5rbMoPfatbrL7V7+OYz+zjwEgMYOMZLcK8kT7ycW3S1wxEFNsdXHrDEoT1nQCsQwhiDx
         Eaec97Bbk19dZ2havcsVpWlfoYPHIw5iM1n5JmNTznqV2L8WF5BA2WnP+zXEI4omaUAW
         fRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774354488; x=1774959288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=38JEbVN9/czZUHowiTyQJJi+NFgr4A1LQF8NnXOZQbo=;
        b=Sdnv32q2lOeWWV3CyfhztTUi5qkqkaDvNAprb4bckT2k8d+naZx9drtSDvhuzQcJRI
         b/fmgr266jka/dvt3Q/ePj4Va1zUFChjA1EMZCK3fRLciSvqtiRAv6S4Ez3/UkDzP9HC
         yyHRGd8wlWbNXX8etk+MAcL16Ppo97wlYwexJ/ezSY+12QRjskC+D8HfQojzXL2Er40M
         FWhThTpnnv6mA9SW6HZlBEmDizyAD0vBx20j8KfLez3F4LfGFCOojSrnpGlQKB0fhxrB
         2XEnmsrbIOyXpS2hbMp5EMHeksuKpDGUJNeV5dGcc/Oj7gxBEITY6886lXi3tFvDwMrA
         Uh8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWyPqoeYLX0qC0ptqrYMkOWnpHUih5pLQ6J9G2lCwG/FpHPpakx1WuY7MSUb7xKrCbuA9JVig6KE4QrpkUt@lists.linaro.org
X-Gm-Message-State: AOJu0Yy2vcYyDfd1+risstV3ANdIg3Nw5vN0osMPAkMW7RdyClzXh1ck
	HvsIMx+oP+eWmCyWWWa0zc14GtymTQRm+Bmcq7Z8DMHyb/MvKETlN7+eL9nDf4wYco27aott/Bz
	sOXJdSWXL40gV3mTnBEdAcDmT3pYihpcHQFOSxijf
X-Gm-Gg: ATEYQzwAK28RjfERe0FmT+ZkeIsdrvlJV7lTxhbzhHzt2M/S3jnCxRJdoBao+3kOncn
	eOJ87I9GCOtyQCrQVndO/tOWXWUxxiOGtJeaDQi2hKMDbok4QPcT5xI1w1gjY0LWQZztEF47vGj
	fYwVmwCLrj9KlxAhoEpWJaF8M5XtqXHgcKXiMYE+XIDE5gZZNa+4Vn1u8yc99oEyfjLovCghKZf
	ugkvSQQSotlZuJ6hSqKa6jhpMtMeCq5IVpqnJ15PEkUL+hCMNVavfIm+MmjA53w1AjAqsUYjVkc
	eFeoKc8ZDNJqdsp5VGzV+KrQ92PQjEr1xccsFByl
X-Received: by 2002:a05:622a:514e:b0:501:3b94:bcae with SMTP id
 d75a77b69052e-50b6fbd1411mr15608601cf.8.1774354488033; Tue, 24 Mar 2026
 05:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260305123641.164164-1-jiri@resnulli.us> <ablV_f_l7wD2m63E@google.com>
 <20260324120057.GC8437@ziepe.ca>
In-Reply-To: <20260324120057.GC8437@ziepe.ca>
From: Mostafa Saleh <smostafa@google.com>
Date: Tue, 24 Mar 2026 12:14:36 +0000
X-Gm-Features: AQROBzDTh0ODj4C3lU1UM-hZHPuBDyd64_bmAvFt0-7PB-OKq8PhbYOrLNqJZ2s
Message-ID: <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Spamd-Bar: -----
X-MailFrom: smostafa@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZJ7TSA2CG2EIDYBI4ISXMFK2JCAHIASR
X-Message-ID-Hash: ZJ7TSA2CG2EIDYBI4ISXMFK2JCAHIASR
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:28 +0000
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZJ7TSA2CG2EIDYBI4ISXMFK2JCAHIASR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[653];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.996];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[smostafa@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5D404431357
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MDHigK9QTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6
aWVwZS5jYT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWFyIDE3LCAyMDI2IGF0IDAxOjI0OjEzUE0g
KzAwMDAsIE1vc3RhZmEgU2FsZWggd3JvdGU6DQo+DQo+ID4gT24gdGhlIG90aGVyIGhhbmQsIGZv
ciByZXN0cmljdGVkLWRtYSwgdGhlIG1lbW9yeSBkZWNyeXB0aW9uIGlzIGRlZXANCj4gPiBpbiB0
aGUgRE1BIGRpcmVjdCBtZW1vcnkgYWxsb2NhdGlvbiBhbmQgdGhlIERNQSBBUEkgY2FsbGVycyAo
Zm9yIGV4DQo+ID4gdmlydGlvIGRyaXZlcnMpIGFyZSBjbHVlbGVzcyBhYm91dCBpdCBhbmQgY2Fu
4oCZdCBwYXNzIGFueSBhdHRycy4NCj4gPiBNeSBwcm9wb3NhbCB3YXMgc3BlY2lmaWMgdG8gcmVz
dHJpY3RlZC1kbWEgYW5kIHdvbuKAmXQgd29yayBmb3IgeW91ciBjYXNlLg0KPg0KPiBIb3cgaXMg
dGhpcyBhbnkgZGlmZmVyZW50IGZyb20gQ0M/DQo+DQo+IElmIHRoZSBkZXZpY2UgY2Fubm90IGRt
YSB0byAiZW5jcnlwdGVkIiBtZW1vcnksIHdoYXRldmVyIHRoYXQgbWVhbnMNCj4gZm9yIHlvdSwg
dGhlbiB0aGUgRE1BIEFQSToNCj4gIC0gTWFrZXMgZG1hIGFsbG9jIGNvaGVyZW50IHJldHVybiAi
ZGVjcnlwdGVkIiBtZW1vcnksIGFuZCB0aGUgYnVpbHQNCj4gICAgaW4gbWFwcGluZyBvZiBjb2hl
cmVudCBtZW1vcnkga25vd3MgYWJvdXQgdGhpcw0KPiAgLSBNYWtlcyBkbWFfbWFwX3h4eCB1c2Ug
U1dJT1RMQiB0byBib3VuY2UgdG8gZGVjcnlwdGVkIG1lbW9yeQ0KPg0KPiBUaGVyZSBpcyBubyBu
ZWVkIGZvciBzb21ldGhpbmcgbGlrZSB2aXJ0aW8gZHJpdmVycyB0byBiZSBhd2FyZSBvZg0KPiBh
bnkgb2YgdGhpcy4NCj4NCj4gT24gdGhlIG90aGVyIGhhbmQgaWYgdGhlIGRyaXZlciBkZWxpYmVy
YXRlbHkgYWxsb2NhdGVzIGRlY3J5cHRlZA0KPiBtZW1vcnkgd2l0aG91dCB1c2luZyBETUEgQVBJ
IGFsbG9jIGNvaGVyZW50IHRoZW4gaXQga25vd3MgaXQgZGlkIGl0DQo+IGFuZCBjYW4gcGFzcyB0
aGUgZmxhZyB0byBtYXAgaXQuDQo+DQoNClRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIERNQSBBUEkg
Y3VycmVudGx5IGdldHMgY29uZnVzZWQgYnkgdGhpczsgaXQNCmNhbiBlbmQgdXAgZG91YmxlIGRl
Y3J5cHRpbmcgdGhlIG1lbW9yeSBvciB1c2luZyB0aGUgd3JvbmcgZnVuY3Rpb25zDQphcyBtZW50
aW9uZWQgaW4gWzFdDQpJbiBhZGRpdGlvbiB0byB0aGUgY29tcGxleGl0eSBpdCBhZGRzIHRvIHRo
ZSBhbHJlYWR5IGNvbXBsaWNhdGVkIERNQQ0KY29kZS4gSSBkb24ndCBoYXZlIGEgc3Ryb25nIG9w
aW5pb24gb24gaG93IHRvIHNvbHZlIHRoaXMsIGJ1dCBJDQpiZWxpZXZlIHdlIG5lZWQgY2xlYXIg
Ym91bmRhcmllcyAoYW5kIHdyYXBwZXJzKSBmb3IgY2FzZXMgd2hlcmUgbWVtb3J5DQplbmNyeXB0
aW9uIGlzIGV4cGVjdGVkIGFzIGl0IGlzIHN0YXJ0aW5nIHRvIHNwaWxsIGludG8gdGhlIGtlcm5l
bC4NCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDMwNTE3MDMzNS45NjM1
NjgtMS1zbW9zdGFmYUBnb29nbGUuY29tLw0KDQpUaGFua3MsDQpNb3N0YWZhDQoNCg0KPiA+IEkg
YW0gd29uZGVyaW5nIGlmIHRoZSBrZXJuZWwgc2hvdWxkIGhhdmUgYSBtb3JlIHNvbGlkLCB1bmlm
aWVkIG1ldGhvZA0KPiA+IGZvciBpZGVudGlmeWluZyBhbHJlYWR5LWRlY3J5cHRlZCBtZW1vcnkg
aW5zdGVhZC4gUGVyaGFwcyB3ZSBuZWVkIGENCj4gPiB3YXkgZm9yIHRoZSBETUEgQVBJIHRvIG5h
dGl2ZWx5IHJlY29nbml6ZSB0aGUgZW5jcnlwdGlvbiBzdGF0ZSBvZiBhDQo+ID4gcGh5c2ljYWwg
cGFnZSAod29ya2luZyBhbG9uZ3NpZGUgZm9yY2VfZG1hX3VuZW5jcnlwdGVkKGRldikpLCByYXRo
ZXINCj4gPiB0aGFuIHJlbHlpbmcgb24gY2FsbGVyLXByb3ZpZGVkIGF0dHJpYnV0ZXM/DQo+DQo+
IERlZmluYXRlbHkgbm90LCB3ZSBkbyBub3Qgd2FudCB0aGUgRE1BIEFQSSBpbnNwZWN0aW5nIHRo
aW5ncyBsaWtlDQo+IHRoaXMuDQo+DQo+IEphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
