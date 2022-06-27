Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D3755BA81
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 16:30:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37029402DF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 14:30:37 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 1A7AD3F1C6
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 14:30:32 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id z7so6947978qko.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 07:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=+cJ3oW5JhP5CUvm7VtdWYx3n1WPkEHSvCw63kv0T4LU=;
        b=zKSz6Fh1HpYzt9lkFd4E5jvmSjpRZNIYbJsVE9KPIGCT8TrvuwD0p98HjFoUKqxI9/
         c1EDzYqPD2Q5jinMHD+OTh0tm2cRoJhw279fQjgZJI8iqyBEeti0R2vTz6GL0vAKTFnw
         z8Qzj7kV8vLHrnNUFgIlfi1kgEy2YfDYtcEOHHG4Kn448ZEFGQAmmLG82T4LOOV1ZI83
         NldkkmZgsCMbxE3QLeNNFI3auIUy3idvVI5U8tQP2r7H6NZNzwU1Y/+hl6apmTacEwwq
         s47xzvu9mphE24bX7TpPAqcFQoJG617eSse6aEU5Zhm2ZKjapJg5EDAnfdKn9VUCbVHX
         EH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=+cJ3oW5JhP5CUvm7VtdWYx3n1WPkEHSvCw63kv0T4LU=;
        b=FaoezaLrBY8NIMtfPOUMgSk4cwwmPblnePUG/ocydLOhJX1ccGRPvxQdhOdwbZMfdF
         eV45WcVqB0Y509fJxT1wpcveL97dPZa8HBwfMg2IZHzP7q/5i/dTyg/XQMDuGewPmd84
         mGrXCHwksgLGo9niah3N+Lc0iX9PCUEons8pk7cdgQSo2HCBOiTqVF5dioKMNtDVQxBy
         5rsaBQGNnHwUx9jVYTw+9mMPaQYjqRBhvQ/7cdVseD1YBqPYrXrSc9Vs857oOJbHdztE
         ibZ9uSQrp+2Cg0bvbUbLNaSOa5WWbW6tLoVCLKC9A7shiMS25bhMUcsWC7duKK7MRy+T
         3bYA==
X-Gm-Message-State: AJIora+cO6Y9BMJpYdwitijyJse8luqaCCDt5fD+jUC5HXqn3amSVjmj
	LpwyoMKk92VgEz1eF+1e9xp1cA==
X-Google-Smtp-Source: AGRyM1shh8VchPY9Xks8fxKysZypOt7C4DGr6K8kbqi9W4sY2Et67+Bx7c+FAJWcc3BX2aQrrTcYVQ==
X-Received: by 2002:a05:620a:4412:b0:6af:2f47:7de2 with SMTP id v18-20020a05620a441200b006af2f477de2mr2679155qkp.649.1656340231749;
        Mon, 27 Jun 2022 07:30:31 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id i1-20020a05620a404100b006a6ae636ce0sm9535296qko.131.2022.06.27.07.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 07:30:31 -0700 (PDT)
Message-ID: <b7b053603323ca241caa42cd5a6599b9263b9864.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Lucas Stach <l.stach@pengutronix.de>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>
Date: Mon, 27 Jun 2022 10:30:30 -0400
In-Reply-To: <e67392e43bfc037db6969297b65b0b6945df8b27.camel@pengutronix.de>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
	 <20220623101326.18beeab3@eldfell>
	 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
	 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
	 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
	 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
	 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
	 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
	 <0abe475a7b4b04758c03a9d19b228e86d95ac1dd.camel@ndufresne.ca>
	 <e67392e43bfc037db6969297b65b0b6945df8b27.camel@pengutronix.de>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: AYFAMUNQKHPZVZ6HPZ6LUVEXLLJC4DMD
X-Message-ID-Hash: AYFAMUNQKHPZVZ6HPZ6LUVEXLLJC4DMD
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYFAMUNQKHPZVZ6HPZ6LUVEXLLJC4DMD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgbHVuZGkgMjcganVpbiAyMDIyIMOgIDE2OjA2ICswMjAwLCBMdWNhcyBTdGFjaCBhIMOpY3Jp
dMKgOg0KPiBBbSBNb250YWcsIGRlbSAyNy4wNi4yMDIyIHVtIDA5OjU0IC0wNDAwIHNjaHJpZWIg
Tmljb2xhcyBEdWZyZXNuZToNCj4gPiBMZSBqZXVkaSAyMyBqdWluIDIwMjIgw6AgMTE6MzMgKzAy
MDAsIEx1Y2FzIFN0YWNoIGEgw6ljcml0wqA6DQo+ID4gPiA+IA0KPiA+ID4gPiBTZWUgZm9yIGV4
YW1wbGUgb24gQU1EL0ludGVsIGhhcmR3YXJlIG1vc3Qgb2YgdGhlIGVuZ2luZXMgY2FuIHBlcmZl
Y3RseSANCj4gPiA+ID4gZGVhbCB3aXRoIGNhY2hlIGNvaGVyZW50IG1lbW9yeSBhY2Nlc3Nlcy4g
T25seSB0aGUgZGlzcGxheSBlbmdpbmVzIGNhbid0Lg0KPiA+ID4gPiANCj4gPiA+ID4gU28gb24g
aW1wb3J0IHRpbWUgd2UgY2FuJ3QgZXZlbiBzYXkgaWYgdGhlIGFjY2VzcyBjYW4gYmUgY29oZXJl
bnQgYW5kIA0KPiA+ID4gPiBzbm9vcCB0aGUgQ1BVIGNhY2hlIG9yIG5vdCBiZWNhdXNlIHdlIGRv
bid0IGtub3cgaG93IHRoZSBpbXBvcnRlZCANCj4gPiA+ID4gRE1BLWJ1ZiB3aWxsIGJlIHVzZWQg
bGF0ZXIgb24uDQo+ID4gPiA+IA0KPiA+ID4gU28gZm9yIHRob3NlIG1peGVkIHVzZSBjYXNlcywg
d291bGRuJ3QgaXQgaGVscCB0byBoYXZlIHNvbWV0aGluZw0KPiA+ID4gc2ltaWxhciB0byB0aGUg
ZG1hX3N5bmMgaW4gdGhlIERNQS1idWYgQVBJLCBzbyB5b3VyIHNjYW5vdXQgdXNhZ2UgY2FuDQo+
ID4gPiB0ZWxsIHRoZSBleHBvcnRlciB0aGF0IGl0J3MgZ29pbmcgdG8gZG8gbm9uLXNub29wIGFj
Y2VzcyBhbmQgYW55IGRpcnR5DQo+ID4gPiBjYWNoZSBsaW5lcyBtdXN0IGJlIGNsZWFuZWQ/IFNp
Z25hbGluZyB0aGlzIHRvIHRoZSBleHBvcnRlciB3b3VsZCBhbGxvdw0KPiA+ID4gdG8gc2tpcCB0
aGUgY2FjaGUgbWFpbnRlbmFuY2UgaWYgdGhlIGJ1ZmZlciBpcyBpbiBDUFUgdW5jYWNoZWQgbWVt
b3J5LA0KPiA+ID4gd2hpY2ggYWdhaW4gaXMgYSBkZWZhdWx0IGNhc2UgZm9yIHRoZSBBUk0gU29D
IHdvcmxkLg0KPiA+IA0KPiA+IFRlbGxpbmcgdGhlIGV4cG9ydGVyIGZvciBldmVyeSBzY2FuIGlz
IHVubmVlZGVkIG92ZXJoZWFkLiBJZiB0aGF0IGluZm9ybWF0aW9uIGlzDQo+ID4gbWFkZSBhdmFp
bGFibGUgInByb3Blcmx5IiwgdGhlbiB0cmFja2luZyBpdCBpbiBhdHRhY2gvZGV0YWNoIGlzIHN1
ZmZpY2llbnQgYW5kDQo+ID4gbGlnaHR3ZWlnaHQuDQo+IA0KPiBUaGF0IGlzbid0IHN1ZmZpY2ll
bnQuIFRoZSBBTUQgR1BVIGlzIGEgc2luZ2xlIGRldmljZSwgYnV0IGludGVybmFsbHkNCj4gaGFz
IGRpZmZlcmVudCBlbmdpbmVzIHRoYXQgaGF2ZSBkaWZmZXJlbnQgY2FwYWJpbGl0aWVzIHdpdGgg
cmVnYXJkIHRvDQo+IHNub29waW5nIHRoZSBjYWNoZXMuIFNvIHlvdSB3aWxsIGxpa2VseSBlbmQg
dXAgd2l0aCBuZWVkaW5nIHRoZSBjYWNoZQ0KPiBjbGVhbiBpZiB0aGUgVjRMMiBidWZmZXIgaXMg
Z29pbmcgZGlyZWN0bHkgdG8gc2Nhbm91dCwgd2hpY2ggZG9lc24ndA0KPiBzbm9vcCwgYnV0IGlm
IHRoZSB1c2FnZSBjaGFuZ2VzIHRvIHNhbXBsaW5nIHlvdSBkb24ndCBuZWVkIGFueSBjYWNoZQ0K
PiBmbHVzaGVzLg0KPiANCj4gQWxzbyBJIGRvbid0IHNlZSBhIGJpZyBvdmVyaGVhZCB3aGVuIGNv
bXBhcmluZyBhIGtlcm5lbCBpbnRlcm5hbCBjYWxsDQo+IHRoYXQgdGVsbHMgdGhlIGV4cG9ydGVy
IHRoYXQgdGhlIGltcG9ydGVyIGlzIGdvaW5nIHRvIGFjY2VzcyB0aGUgYnVmZmVyDQo+IHdpdGhv
dXQgc25vb3BpbmcgYW5kIHRodXMgbmVlZHMgdGhlIGNhY2hlIGNsZWFuIG9uY2UgZXZlcnkgZnJh
bWUgYW5kDQo+IHRoZSBuZWVkIHRvIGFsd2F5cyBjbGVhbiB0aGUgY2FjaGUgYmVmb3JlIERRQlVG
IHdoZW4gYSBwb3RlbnRpYWxseSBub24tDQo+IHNub29waW5nIGltcG9ydGVyIGlzIGF0dGFjaGVk
Lg0KDQpBY2ssIHRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uLg0KDQo+IA0KPiBSZWdhcmRzLA0K
PiBMdWNhcw0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
