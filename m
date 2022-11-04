Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC835619842
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 14:38:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1CB63F5C5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 13:38:57 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id 66BA93EF38
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 13:38:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20210112.gappssmtp.com header.s=20210112 header.b=3llLCVRf;
	spf=none (lists.linaro.org: domain of nicolas@ndufresne.ca has no SPF policy when checking 209.85.222.175) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=none
Received: by mail-qk1-f175.google.com with SMTP id k2so3028365qkk.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 04 Nov 2022 06:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Pdwvn5a6hNc87DO76EwjKCkrFa8eSjbI4KOhkL0Kjvc=;
        b=3llLCVRfptr0RrrYTy+3tUQKBIuC++7co2Cc8rPgcQ/JeMhm4duWiD8WLd9bO83ySx
         Ad+Vm457CzWPS3HJ6ASoM19iNm/LY+xD6SkkJ4s3rwL572MS5PrK8YsGESjouXu0STqH
         4AT65vCpfi6FVElxpbzjzkHvGcOr/hdF6NxMZ6coBZ8h60UEJRfZ/WmnFfxT1zjUF1rI
         37tGK3gXKw5ZgKWSEhYVIqSDQPV5rjgpXUyN9rQkgFV0+Q8gCDL/7vbLFFoHLGGEOr3o
         PUwvv23dzeMBaHHk6AUAmCtK/MqwAgSgrs0uXLNgupkfWZtcaPBvi0ApE0IiByK8bp8w
         YGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pdwvn5a6hNc87DO76EwjKCkrFa8eSjbI4KOhkL0Kjvc=;
        b=TeyhiBt1vbRNCxfU65AbibukU3xkUjvovlDNipAiIQjPJGC+MTKJeCr0rlV5NgRaiK
         En3psBzdY4xYw2q++x9tHQTrICGSo32jpuyMJe4v4Z9XmeS57wonwl43NgnE2q1UtQU/
         ZLx7f8LekUT3rTa+UaRWjXClrp1UjcS8x3ckbdq6I10w7xPmfyqM6f9jid6s+jT0DfXF
         ErU1bQYFjFmh0SQm5R+sIpoUh70K4rKyoLjPAZBaNlQPhwgDcn8+VCF0SyWU4COjR3Ts
         dXIZTdUPovXlwYf9PaDKNjE9p9zvXbs4nS3za1u7pBDrZnlbuLIV3gI9FUvQ6TNuPpIM
         mnjQ==
X-Gm-Message-State: ACrzQf3KrQNvti5Bk3rSgl8OD2Jk+jQThY8hI+T+R8IM916m5XQ/tkW8
	61aNB1CmssxHKhw/rurhIxlsVQ==
X-Google-Smtp-Source: AMsMyM5mCuTP5LW2faKmynlIaGpNmXBFkbf5r1IwWOBPXV0P4baay38suUbPppIoj+jvo1JDnBoj4Q==
X-Received: by 2002:a05:620a:2994:b0:6fa:65d7:30c5 with SMTP id r20-20020a05620a299400b006fa65d730c5mr9592730qkp.753.1667569121013;
        Fri, 04 Nov 2022 06:38:41 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id bq37-20020a05620a46a500b006ee77f1ecc3sm3011463qkb.31.2022.11.04.06.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:38:40 -0700 (PDT)
Message-ID: <434299935e7ed9a7a02e4e358cd044e54145582e.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Daniel Stone <daniel@fooishbar.org>
Date: Fri, 04 Nov 2022 09:38:38 -0400
In-Reply-To: <441e7155-2fa3-e34f-1bf6-706a0e5698d8@gmail.com>
References: <20221020121316.3946-1-christian.koenig@amd.com>
	 <3d7353f3fa5905ce18e5b2d92f758f098189bc5a.camel@pengutronix.de>
	 <7f5eff36-6886-bb06-061a-dd4263b61605@gmail.com>
	 <f5de84cfe81fee828bbe0d47d379028d28ef6ca6.camel@pengutronix.de>
	 <e02cedc2-6741-8813-a7a5-f8769e301745@gmail.com>
	 <a53e5df51ec0f2f9d4c2d377c0cc5ba85f2e58ff.camel@ndufresne.ca>
	 <9d716641-55c6-1590-26c2-1c3b14a28226@gmail.com>
	 <CAPj87rMPkmimR_RJHhxYZokH__TVpPArk0h6drOUSx7Z9+oAHA@mail.gmail.com>
	 <11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com>
	 <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
	 <b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
	 <90a1fb6101483971ef14d22370aac50d494a4752.camel@ndufresne.ca>
	 <441e7155-2fa3-e34f-1bf6-706a0e5698d8@gmail.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -
X-Rspamd-Queue-Id: 66BA93EF38
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20210112.gappssmtp.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ndufresne.ca];
	DKIM_TRACE(0.00)[ndufresne-ca.20210112.gappssmtp.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[amd.com:url,qnap.com:url];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,fooishbar.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,linaro.org,ffwll.ch,lists.freedesktop.org,lists.linaro.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: LL7QVUFR7I7BVO6KBVBN7TCZNYW45LCO
X-Message-ID-Hash: LL7QVUFR7I7BVO6KBVBN7TCZNYW45LCO
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LL7QVUFR7I7BVO6KBVBN7TCZNYW45LCO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgdmVuZHJlZGkgMDQgbm92ZW1icmUgMjAyMiDDoCAxMDowMyArMDEwMCwgQ2hyaXN0aWFuIEvD
tm5pZyBhIMOpY3JpdMKgOg0KPiBBbSAwMy4xMS4yMiB1bSAyMzoxNiBzY2hyaWViIE5pY29sYXMg
RHVmcmVzbmU6DQo+ID4gW1NOSVBdDQo+ID4gDQo+ID4gV2FzIHRoZXJlIEFQSXMgc3VnZ2VzdGVk
IHRvIGFjdHVhbGx5IG1ha2UgaXQgbWFuYWdlYWJsZSBieSB1c2VybGFuZCB0byBhbGxvY2F0ZQ0K
PiA+IGZyb20gdGhlIEdQVT8gWWVzLCB0aGlzIHdoYXQgTGludXggRGV2aWNlIEFsbG9jYXRvciBp
ZGVhIGlzIGZvci4gSXMgdGhhdCBBUEkNCj4gPiByZWFkeSwgbm8uDQo+IA0KPiBXZWxsLCB0aGF0
IHN0dWZmIGlzIGFic29sdXRlbHkgcmVhZHk6IA0KPiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5j
I0wxNzUgDQo+IFdoYXQgZG8geW91IHRoaW5rIEknbSB0YWxraW5nIGFib3V0IGFsbCB0aGUgdGlt
ZT8NCg0KSSdtIGF3YXJlIG9mIERNQSBIZWFwLCBzdGlsbCBoYXZlIGZldyBnYXBzLCBidXQgdGhp
cyB1bnJlbGF0ZWQgdG8gY29oZXJlbmN5ICh3ZQ0KY2FuIGRpc2N1c3Mgb2ZmbGluZSwgd2l0aCBE
YW5pZWwgUy4pLiBGb3IgRE1BQnVmIEhlYXAsIGl0cyB1c2VkIGluIG1hbnkgZm9ya3MgYnkNCnZl
bmRvcnMgaW4gcHJvZHVjdGlvbi4gVGhlcmUgaXMgYW4gdXBzdHJlYW0gcHJvcG9zYWwgZm9yIEdT
dHJlYW1lciwgYnV0IHJldmlldw0KY29tbWVudHMgd2VyZSBuZXZlciBhZGRyZXNzZWQsIGluIHNo
b3J0LCBpdHMgc3RhbGxlZCwgYW5kIGl0IHdhaXRpbmcgZm9yIGENCnZvbHVudGVlci4gSXQgbWln
aHQgYWxzbyBiZSBiYXNlZCBvbiB2ZXJ5IG9sZCBpbXBsZW1lbnRhdGlvbiBvZiBETUFCdWYgSGVh
cCwNCm5lZWRzIHRvIGJlIHZlcmlmaWVkIGluIGRlcHRoIGZvciBzdXJlIGFzIHRoZSB0aW1lIGhh
dmUgcGFzc2VkLg0KDQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVhbWVyL2dz
dHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzEzOTENCg0KPiANCj4gRE1BLWJ1ZiBoYXMgYSBsZW5n
dGh5IHNlY3Rpb24gYWJvdXQgQ1BVIGFjY2VzcyB0byBidWZmZXJzIGFuZCBjbGVhcmx5IA0KPiBk
b2N1bWVudHMgaG93IGFsbCBvZiB0aGF0IGlzIHN1cHBvc2VkIHRvIHdvcms6IA0KPiBodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMjTDExNjAgDQo+IFRoaXMgaW5jbHVkZXMgYnJha2V0aW5nIG9mIENQVSBhY2Nlc3Mg
d2l0aCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKSANCj4gYW5kIGRtYV9idWZfZW5kX2NwdV9h
Y2Nlc3MoKSwgYXMgd2VsbCBhcyB0cmFuc2FjdGlvbiBtYW5hZ2VtZW50IGJldHdlZW4gDQo+IGRl
dmljZXMgYW5kIHRoZSBDUFUgYW5kIGV2ZW4gaW1wbGljaXQgc3luY2hyb25pemF0aW9uLg0KPiAN
Cj4gVGhpcyBzcGVjaWZpY2F0aW9uIGlzIHRoZW4gaW1wbGVtZW50ZWQgYnkgdGhlIGRpZmZlcmVu
dCBkcml2ZXJzIA0KPiBpbmNsdWRpbmcgVjRMMjogDQo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3Zp
ZGVvYnVmMi1kbWEtc2cuYyNMNDczDQo+IA0KPiBBcyB3ZWxsIGFzIHRoZSBkaWZmZXJlbnQgRFJN
IGRyaXZlcnM6IA0KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291
cmNlL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyNMMTE3IA0KPiBo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMjTDIzNA0KDQpJIGtub3csIEkndmUgaW1w
bGVtZW50IHRoZSB1c2Vyc3BhY2UgYnJhY2tldGluZyBmb3IgdGhpcyBpbiBHU3RyZWFtZXIgWzFd
IGJlZm9yZQ0KRE1BYnVmIEhlYXAgd2FzIG1lcmdlZCBhbmQgd2FzIG9uZSBvZiB0aGUgcmVwb3J0
ZXIgZm9yIHRoZSBtaXNzaW5nIGJyYWNrZXRpbmcgaW4NClZCMi4gV2FzIHRlc3RlZCBhZ2FpbnN0
IGk5MTUgZHJpdmVyLiBOb3RlLCB0aGlzIGlzIGp1c3QgYSBmYWxsYmFjaywgdGhlDQpwZXJmb3Jt
YW5jZSBpcyB0ZXJyaWJsZSwgbWVtb3J5IGV4cG9ydGVkIGJ5IChhdCBsZWFzdCBteSBvbGQgaTkx
NSBIVykgaXMgbm90DQpjYWNoZWFibGUgb24gQ1BVLiBUaG91Z2gsIGJldHdlZW4gY29ycnVwdGVk
IGltYWdlIGFuZCBiYWQgcGVyZm9ybWFuY2Ugb3IganVzdA0KYmFkIHBlcmZvcm1hbmNlLCB3ZSBk
ZWNpZGVkIHRoYXQgaXQgd2FzIGJldHRlciB0byBoYXZlIHRoZSBzZWNvbmQuIFdoZW4gdGhlDQpE
TUFCdWYgaXMgYmFja2VkIGJ5IENQVSBjYWNoZWFibGUgbWVtb3J5LCBwZWZvcm1hbmNlIGlzIGdy
ZWF0IGFuZCBDUFUgZmFsbGJhY2sNCndvcmtzLiBXb3JrIGlzIGluIHByb2dyZXNzIHRvIGJldHRl
ciBoYW5kbGUgdGhlc2UgdHdvIGNhc2VzIGdlbmVyaWNhbGx5LiBGb3INCm5vdywgc29tZXRpbWVz
IHRoZSBhcHAgbmVlZCB0byBnZXQgaW52b2x2ZWQsIGJ1dCB0aGlzIGlzIG9ubHkgaGFwcGVucyBv
bg0KZW1iZWRkZWQvY29udHJvbGxlZCBraW5kIG9mIHVzZSBjYXNlcy4gV2hhdCBtYXR0ZXJzIGlz
IHRoYXQgYXBwbGljYXRpb24gdGhhdA0KbmVlZHMgdGhpcyBjYW4gZG8gaXQuDQoNClsxXSBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVhbWVyL2dzdHJlYW1lci8tL2Jsb2IvbWFp
bi9zdWJwcm9qZWN0cy9nc3QtcGx1Z2lucy1iYXNlL2dzdC1saWJzL2dzdC9hbGxvY2F0b3JzL2dz
dGRtYWJ1Zi5jDQoNCj4gDQo+IFRoaXMgZGVzaWduIHdhcyB0aGVuIHVzZWQgYnkgdXMgd2l0aCB2
YXJpb3VzIG1lZGlhIHBsYXllcnMgb24gZGlmZmVyZW50IA0KPiBjdXN0b21lciBwcm9qZWN0cywg
aW5jbHVkaW5nIFFOQVAgaHR0cHM6Ly93d3cucW5hcC5jb20vZW4vcHJvZHVjdC90cy04NzcgDQo+
IGFzIHdlbGwgYXMgdGhlIG5ld2VzdCBUZXNsYSANCj4gaHR0cHM6Ly93d3cuYW1kLmNvbS9lbi9w
cm9kdWN0cy9lbWJlZGRlZC1hdXRvbW90aXZlLXNvbHV0aW9ucw0KPiANCj4gSSB3b24ndCBnbyBp
bnRvIHRoZSBkZXRhaWxzIGhlcmUsIGJ1dCB3ZSBhcmUgdXNpbmcgZXhhY3RseSB0aGUgYXBwcm9h
Y2ggDQo+IEkndmUgb3V0bGluZWQgdG8gbGV0IHVzZXJzcGFjZSBjb250cm9sIHRoZSBETUEgYmV0
d2VlbiB0aGUgZGlmZmVyZW50IA0KPiBkZXZpY2UgaW4gcXVlc3Rpb24uIEknbSBvbmUgb2YgdGhl
IG1haW4gZGVzaWduZXJzIG9mIHRoYXQgYW5kIG91ciANCj4gbXVsdGltZWRpYSBhbmQgbWVzYSB0
ZWFtIGhhcyB1cC1zdHJlYW1lZCBxdWl0ZSBhIG51bWJlciBvZiBjaGFuZ2VzIGZvciANCj4gdGhp
cyBwcm9qZWN0Lg0KPiANCj4gSSdtIG5vdCB0aGF0IHdlbGwgaW50byBkaWZmZXJlbnQgQVJNIGJh
c2VkIHNvbHV0aW9ucyBiZWNhdXNlIHdlIGFyZSBqdXN0IA0KPiByZWNlbnRseSBnZXR0aW5nIHJl
c3VsdHMgdGhhdCB0aGlzIHN0YXJ0cyB0byB3b3JrIHdpdGggQU1EIEdQVXMsIGJ1dCBJJ20gDQo+
IHByZXR0eSBzdXJlIHRoYXQgdGhlIGRlc2lnbiBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUgdGhh
dCBhcyB3ZWxsLg0KPiANCj4gU28gd2UgaGF2ZSBjbGVhcmx5IHByb3ZlIHRoYXQgdGhpcyBkZXNp
Z24gd29ya3MsIGV2ZW4gd2l0aCBzcGVjaWFsIA0KPiByZXF1aXJlbWVudHMgd2hpY2ggYXJlIHdh
eSBtb3JlIGNvbXBsZXggdGhhbiB3aGF0IHdlIGFyZSBkaXNjdXNzaW5nIA0KPiBoZXJlLiBXZSBo
YWQgY2FzZXMgd2hlcmUgd2UgdXNlZCBHU3RyZWFtZXIgdG8gZmVlZCBETUEtYnVmIGhhbmRsZXMg
aW50byANCj4gbXVsdGlwbGUgZGV2aWNlcyB3aXRoIGRpZmZlcmVudCBmb3JtYXQgcmVxdWlyZW1l
bnRzIGFuZCB0aGF0IHNlZW1zIHRvIA0KPiB3b3JrIGZpbmUuDQoNClNvdW5kcyBsaWtlIHlvdSBo
YXZlIGEgbG92ZS9oYXRlIHJlbGF0aW9uc2hpcCB3aXRoIEdTdHJlYW1lci4gR2xhZCB0aGUgZnJh
bWV3b3JrDQppcyB3b3JraW5nIGZvciB5b3UgdG9vLiBUaGUgZnJhbWV3b3JrIGhhdmUgaGFkIGJp
ZGlyZWN0aW9uYWwgbWVtb3J5IGFsbG9jYXRpb24NCmZvciBvdmVyIGEgZGVjYWRlLCBpdCBhbHNv
IGhhcyBjb250ZXh0IHNoYXJpbmcgZm9yIHN0YWNrcyBsaWtlDQpEM0QxMSwxMi9HTC9WdWxrYW4v
Q1VEQSBldGMuIEkgc3RyaWN0bHkgZGlkbid0IHVuZGVyc3RhbmQgd2hhdCB5b3Ugd2VyZQ0KY29t
cGxhaW5pbmcgYWJvdXQuIEFzIGEgdmVuZG9yLCB5b3UgY2FuIHNvbHZlIGFsbCB0aGlzIGluIHlv
dXIgQlNQLiBUaG91Z2gsDQp0cmFuc2xhdGluZyBCU1AgcGF0Y2hlcyBpbnRvIGEgZ2VuZXJpYyB1
cHN0cmVhbS1hYmxlIGZlYXR1cmVzIGlzIG5vdCBhcyBzaW1wbGUuDQpUaGUgc29sdXRpb24gdGhh
dCB3b3JrcyBmb3IgdmVuZG9yIGlzIHVzdWFsbHkgdGhlIG1vc3QgY29zdCBlZmZlY3RpdmUgb25l
LiBJJ20NCnN1cmUsIFRlc2xhIG9yIEFNRCBBdXRvbW90aXZlIGFyZSBubyBleGNlcHRpb25zLg0K
DQo+IA0KPiAtLS0tLQ0KPiBXaGF0IGlzIGNsZWFybHkgYSBidWcgaW4gdGhlIGtlcm5lbCBpcyB0
aGF0IHdlIGRvbid0IHJlamVjdCB0aGluZ3Mgd2hpY2ggDQo+IHdvbid0IHdvcmsgY29ycmVjdGx5
IGFuZCB0aGlzIGlzIHdoYXQgdGhpcyBwYXRjaCBoZXJlIGFkZHJlc3Nlcy4gV2hhdCB3ZSANCj4g
Y291bGQgdGFsayBhYm91dCBpcyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IGZvciB0aGlzIHBhdGNo
LCBjYXVzZSBpdCANCj4gbWlnaHQgbG9vayBsaWtlIGl0IGJyZWFrcyB0aGluZ3Mgd2hpY2ggcHJl
dmlvdXNseSB1c2VkIHRvIHdvcmsgYXQgbGVhc3QgDQo+IHBhcnRpYWxseS4NCg0KSSBkaWQgcmVh
ZCB5b3VyIGNvZGUgcmV2aWV3IChJIGRvbid0IGNsYXNzIHRoaXMgZGlzY3Vzc2lvbiBhcyBhIGNv
ZGUgcmV2aWV3KS4NCllvdSB3aGVyZSBhc2tlZCB0byBhZGRyZXNzIHNldmVyYWwgaXNzdWVzLCBj
bGVhcmx5IGEgdjIgaXMgbmVlZGVkLg0KDQoxLiBSb2IgQ2xhcmsgc3RhdGVkIHRoZSBjb2hlcmVu
Y3kgaXMgbm90IGhvbW9nZW5lb3VzIGluIG1hbnkgZGV2aWNlIGRyaXZlcnMuIFNvDQp5b3VyIHBh
dGNoIHdpbGwgeWllbGQgbWFueSBmYWxzZSBwb3NpdGl2ZXMuIEhlIGFza2VkIGlmIHlvdSBjb3Vs
ZCB0aGluayBvZiBhDQoicGVyIGF0dGFjaGVtZW50IiBzb2x1dGlvbiwgYXMgc3BsaXR0aW5nIGRy
aXZlcnMgZGlkbid0IHNlZW0gbGlrZSB0aGUgYmVzdA0KYXBwcm9hY2ggKGFuZCBpdCB3b3VsZCBo
YXZlIHRvIGhhcHBlbiBhdCB0aGUgc2FtZSB0aW1lIGFueXdheSkuIA0KDQoyLiBMdWNhcyByYWlz
ZWQgYSBjb25jZXJuLCB1bmZvcnR1bmF0ZWx5IG5vIHByb29mIHlldCwgdGhhdCB0aGlzIG1heSBj
YXVzZQ0KcmVncmVzc2lvbnMgaW4gZXhpc3RpbmcgdXNlcnNwYWNlIGFwcGxpY2F0aW9uLiBZb3Ug
c3RhdGVkIHRoYXQgdGhlIGFwcGxpY2F0aW9uDQptdXN0IGJlIHdyb25nLCB5ZXQgdGhpcyB3b3Vs
ZCBicmVhayBMaW51cyBydWxlICMxLiBJJ20gbm90IHBhcnRpY2lwYXRpbmcgaW4gdGhhdA0KZGlz
Y3Vzc2lvbiwgSSB0cmllZCB0byByZXByb2R1Y2VkLCBidXQgYXBwYXJ0IGZyb20gd3JpdGluZyBh
biBhcHAgdGhhdCB3aWxsDQpicmVhaywgSSBoYXZlbid0IGZvdW5kIHlldC4gQnV0IGl0IGZlZWxz
IGxpa2UgdGhlIHdheSBmb3J3YXJkIGlzIHRvIGVuc3VyZSBlYWNoDQpleHBvcnRlciBkcml2ZXIg
Y2FuIG92ZXJyaWRlIHRoaXMgaW4gY2FzZSBpdCBoYXMgYSBnb29kIHJlYXNvbiB0byBkbyBzby4N
Cg0KQXMgYSB0aGlyZCBvcHRpb24sIGEgc2FmZXIgYXBwcm9hY2ggd291bGQgYmUgdG8gYXZvaWQg
cmV1c2luZyBhIGZsYXdlZCBtZWNoYW5pc20NCnRvIGRldGVjdCBkZXZpY2UgY29oZXJlbmN5IChv
ciByZXBocmFzZWQsIGFjY2VwdCB0aGF0IGRldmljZSBjb2hlcmVuY3kgaXNuJ3QNCmhvbW9nZW5l
b3VzKS4gQ29tbXVuaWNhdGUgdGhpcyBiYWNrIGFub3RoZXIgd2F5LiB0aGlzIG1lYW5zIHBhdGNo
aW5nIGFsbCB0aGUNCmRyaXZlcnMsIGJ1dCBhdCBsZWFzdCBlYWNoIGRyaXZlciBtYWludGFpbmVy
IHdpbGwgYmUgYWJsZSB0byBqdWRnZSB3aXRoIHRoZWlyIEhXDQprbm93bGVkZ2UgaWYgdGhpcyBp
cyBnb2luZyB0byByZWdyZXNzIG9yIG5vdC4gV2hlbiBJIGZpcnN0IGxvb2tlZCBhdCBpdCwgSQ0K
d2FudGVkIHRvIGV4cGVyaW1lbnQgd2l0aCBlbmFibGluZyBjYWNoZSBpbiB2YjIgY29udGlndW91
cyBhbGxvY2F0b3IuIEkgd2FzDQp0aGlua2luZyB0aGF0IHBlcmhhcHMgSSBjb3VsZCBoYXZlIGJy
YWNrZXRpbmcsIGFuZCBzdGF0ZSBjaGFuZ2VzIHRyaWdnZXJlZCBieQ0KdGhlIGF0dGFjaCBjYWxs
LCBhbGwgYmFzZWQgb24gdGhlIGRldmljZSBjb2hlcmVuY3ksIGJ1dCBub3cgdGhhdCBJIHNhdyBS
b2IgQ2xhcmsNCmNvbW1lbnQsIEkgZmVlbCBsaWtlIHRoaXMgaXMgZmxhd2VkLg0KDQpoYXBweSB2
MiwNCk5pY29sYXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
