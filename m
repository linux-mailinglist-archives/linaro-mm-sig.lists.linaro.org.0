Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFE397FC1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 18:14:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A434261834
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 16:14:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9421C61837; Wed, 21 Aug 2019 16:14:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4897C61836;
	Wed, 21 Aug 2019 16:13:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 69AB361833
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 16:13:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 53F3461836; Wed, 21 Aug 2019 16:13:33 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id D9AA861833
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 16:13:31 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id s15so3628131edx.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 09:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=9F5bjaMc9P000ps+Gl1qY6vV8NWSDQv4mY3g0dOh/G8=;
 b=OG4jJeHK5kV0JAV06TQYtfbuycYwKm6OFrqeFMGw+Dhr4H3Lw4IQMsEV+r3PUuvhjJ
 lx/ahwSkAUR5MAAd36aNrkWOy8p/K0svryBvjFIAIGtW4H36YUIaBnXHzc4aDSOOZpX9
 mIG5MLIN4WIvgG6W0ZW2aJrenHGcfwEO727osDDkPr8CcJgix3ZYEEEOLwr/h60LMbP+
 q/ms9QmlH+hcpPhrIlUO5FhRG+1e1KI74q0vZlaguSqiGzRYS+uspCDbB6h5VItiAhtf
 YVocWySQk5luehazFKBbzfWZzQHlHSxOWIqK4lVDOrJwneFK24wPtPJaRPVsr4jRGGu2
 dCDg==
X-Gm-Message-State: APjAAAXiqNgaiICp5ohp6lQ8++nb9NRIOAnoST1irk95SJNEAMIwQZIv
 NdVRG9DY1TxZEF4dzFqyydeneQ==
X-Google-Smtp-Source: APXvYqy31LW3yEn6hEEMQFThT4JnCQX43e25E+unpLiiHuK6DkGmALDxLLbgr+bd+xP3Jy81R2YcQw==
X-Received: by 2002:aa7:d701:: with SMTP id t1mr36940245edq.265.1566404011008; 
 Wed, 21 Aug 2019 09:13:31 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id i8sm4181194edg.12.2019.08.21.09.13.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 09:13:29 -0700 (PDT)
Date: Wed, 21 Aug 2019 18:13:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20190821161327.GO11147@phenom.ffwll.local>
References: <20190821123147.110736-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821123147.110736-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC] replacing dma_resv API
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMDI6MzE6MzdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBIaSBldmVyeW9uZSwKPiAKPiBJbiBwcmV2aW91cyBkaXNjdXNzaW9uIGl0IHN1
cmZhY2VkIHRoYXQgZGlmZmVyZW50IGRyaXZlcnMgdXNlIHRoZSBzaGFyZWQKPiBhbmQgZXhwbGlj
aXQgZmVuY2VzIGluIHRoZSBkbWFfcmVzdiBvYmplY3Qgd2l0aCBkaWZmZXJlbnQgbWVhbmluZ3Mu
Cj4gCj4gVGhpcyBpcyBwcm9ibGVtYXRpYyB3aGVuIHdlIHNoYXJlIGJ1ZmZlcnMgYmV0d2VlbiB0
aG9zZSBkcml2ZXJzIGFuZAo+IHJlcXVpcmVtZW50cyBmb3IgaW1wbGljaXQgYW5kIGV4cGxpY2l0
IHN5bmNocm9uaXphdGlvbiBsZWFkZWQgdG8gcXVpdGUgYQo+IG51bWJlciBvZiB3b3JrYXJvdW5k
cyByZWxhdGVkIHRvIHRoaXMuCj4gCj4gU28gSSBzdGFydGVkIGFuIGVmZm9ydCB0byBnZXQgYWxs
IGRyaXZlcnMgYmFjayB0byBhIGNvbW1vbiB1bmRlcnN0YW5kaW5nCj4gb2Ygd2hhdCB0aGUgZmVu
Y2VzIGluIHRoZSBkbWFfcmVzdiBvYmplY3QgbWVhbiBhbmQgYmUgYWJsZSB0byB1c2UgdGhlCj4g
b2JqZWN0IGZvciBkaWZmZXJlbnQga2luZCBvZiB3b3JrbG9hZHMgaW5kZXBlbmRlbnQgb2YgdGhl
IGNsYXNzaWMgRFJNCj4gY29tbWFuZCBzdWJtaXNzaW9uIGludGVyZmFjZS4KPiAKPiBUaGUgcmVz
dWx0IGlzIHRoaXMgcGF0Y2ggc2V0IHdoaWNoIG1vZGlmaWVzIHRoZSBkbWFfcmVzdiBBUEkgdG8g
Z2V0IGF3YXkKPiBmcm9tIGEgc2luZ2xlIGV4cGxpY2l0IGZlbmNlIGFuZCBtdWx0aXBsZSBzaGFy
ZWQgZmVuY2VzLCB0b3dhcmRzIGEKPiBub3RhdGlvbiB3aGVyZSB3ZSBoYXZlIGV4cGxpY2l0IGNh
dGVnb3JpZXMgZm9yIHdyaXRlcnMsIHJlYWRlcnMgYW5kCj4gb3RoZXJzLgo+IAo+IFRvIGRvIHRo
aXMgSSBjYW1lIHVwIHdpdGggYSBuZXcgY29udGFpbmVyIGNhbGxlZCBkbWFfcmVzdl9mZW5jZXMg
d2hpY2gKPiBjYW4gc3RvcmUgYm90aCBhIHNpbmdsZSBmZW5jZSBhcyB3ZWxsIGFzIG11bHRpcGxl
IGZlbmNlcyBpbiBhCj4gZG1hX2ZlbmNlX2FycmF5Lgo+IAo+IFRoaXMgdHVybmVkIG91dCB0byBh
Y3R1YWxseSBiZSBldmVuIGJlIHF1aXRlIGEgYml0IHNpbXBsZXIsIHNpbmNlIHdlCj4gZG9uJ3Qg
bmVlZCBhbnkgY29tcGxpY2F0ZWQgZGFuY2UgYmV0d2VlbiBSQ1UgYW5kIHNlcXVlbmNlIGNvdW50
Cj4gcHJvdGVjdGVkIHVwZGF0ZXMgYW55IG1vcmUuCj4gCj4gSW5zdGVhZCB3ZSBjYW4ganVzdCBn
cmFiIGEgcmVmZXJlbmNlIHRvIHRoZSBkbWFfZmVuY2VfYXJyYXkgdW5kZXIgUkNVCj4gYW5kIHNv
IGtlZXAgdGhlIGN1cnJlbnQgc3RhdGUgb2Ygc3luY2hyb25pemF0aW9uIGFsaXZlIHVudGlsIHdl
IGFyZSBkb25lCj4gd2l0aCBpdC4KPiAKPiBUaGlzIHJlc3VsdHMgaW4gYm90aCBhIHNtYWxsIHBl
cmZvcm1hbmNlIGltcHJvdmVtZW50IHNpbmNlIHdlIGRvbid0IG5lZWQKPiBzbyBtYW55IGJhcnJp
ZXJzIGFueSBtb3JlLCBhcyB3ZWxsIGFzIGZld2VyIGxpbmVzIG9mIGNvZGUgaW4gdGhlIGFjdHVh
bAo+IGltcGxlbWVudGF0aW9uLgoKSSB0aGluayB5b3UgdHJhZGVkIGxhY2sgb2YgYmFycmllcnMv
cmV0cnkgbG9vcHMgZm9yIGNvcnJlY3RuZXNzIGhlcmUsIHNlZQpyZXBseSBsYXRlciBvbi4gQnV0
IEkgaGF2ZW4ndCBncm9ra2VkIHRoZSBmdWxsIHRoaW5nIGluIGRldGFpbHMsIHNvIGVhc2lseQpt
aWdodCBoYXZlIG1pc3NlZCBzb21ldGhpbmcuCgpCdXQgaGlnaCBsZXZlbCBmaXJzdCwgYW5kIEkg
ZG9uJ3QgZ2V0IHRoaXMgYXQgYWxsLiBDdXJyZW50IHN0YXRlOgoKSWxsIGRlZmluZWQgc2VtYW50
aWNzLCBubyBkb2NzLiBZb3UgaGF2ZSB0byBsb29rIGF0IHRoZSBpbXBsZW1lbnRhdGlvbnMuCgpO
ZXcgc3RhdGUgYWZ0ZXIgeW91IHBhdGNoIHNlcmllczoKCklsbCBkZWZpbmVkIHNlbWFudGljcyAo
YnV0IGhleSBkaWZmZXJlbnQhKSwgbm8gZG9jcy4gWW91IHN0aWxsIGhhdmUgdG8KbG9vayBhdCB0
aGUgaW1wbGVtZW50YXRpb25zIHRvIHVuZGVyc3RhbmQgd2hhdCdzIGdvaW5nIG9uLgoKSSB0aGlu
ayB3aGF0IGhhcyBhY3R1YWxseSBjaGFuZ2VkIChhc2lkZSBmcm9tIHRoZSBlbnRpcmUgaW1wbGVt
ZW50YXRpb24pCmlzIGp1c3QgdGhlc2UgdGhyZWUgdGhpbmdzOgotIHdlIG5vdyBhbGxvdyBtdWx0
aXBsZSBleGNsdXNpdmUgZmVuY2VzCi0gZXhjbHVzaXZlIHdhcyByZW5hbWVkIHRvIHdyaXRlciBm
ZW5jZXMsIHNoYXJlZCB0byByZWFkZXIgZmVuY2VzCi0gdGhlcmUncyBhIG5ldyAib3RoZXIiIGdy
b3VwLCBmb3IgLi4uIG90aGVyd29yZGx5IGZlbmNlcz8KCkFmYWl1aSB3ZSBoYXZlIHRoZSBmb2xs
b3dpbmcgdG8gaXNzdWVzIHdpdGggdGhlIGN1cnJlbnQgZmVuY2Ugc2VtYW50aWNzOgotIGFtZGdw
dSBjYW1lIHVwIHdpdGggYSB0b3RhbGx5IGRpZmZlcmVudCBub3Rpb24gb2YgaW1wbGljaXQgc3lu
YywgdXNpbmcKICB0aGUgb3duZXIgdG8gZmlndXJlIG91dCB3aGVuIHRvIHN5bmMuIEkgaGF2ZSBu
byBpZGVhIGF0IGFsbCBob3cgdGhhdAogIG1lc2hlcyB3aXRoIG11bHRpcGxlIHdyaXRlcnMsIGJ1
dCBJIGd1ZXNzIHRoZXJlJ3MgYSBjb25uZWN0aW9uLgotIGFtZGtmZCBkb2VzIGEgdmVyeSBmYW5j
eSBldmljdGlvbi9wcmVlbXB0IGZlbmNlLiBJcyB0aGF0IHdoYXQgdGhlIG90aGVyCiAgYnVja2V0
IGlzIGZvcj8KCkkgZ3Vlc3MgSSBjb3VsZCByZWFkIHRoZSBhbWRncHUvdHRtIGNvZGUgaW4gdmVy
eSBmaW5lIGRldGFpbCBhbmQgZmlndXJlCnRoaXMgb3V0LCBidXQgSSByZWFsbHkgZG9uJ3Qgc2Vl
IGhvdyB0aGF0J3MgbW92aW5nIHN0dWZmIGZvcndhcmQuCgpBbHNvLCBJIHRoaW5rIGl0J2QgYmUg
cmVhbGx5IGdvb2QgdG8gZGVjb3VwbGUgc2VtYW50aWMgY2hhbmdlcyBmcm9tCmltcGxlbWVudGF0
aW9uIGNoYW5nZXMsIGJlY2F1c2UgdW50YW5nbGluZyB0aGVtIGlmIHdlIGhhdmUgdG8gcmV2ZXJ0
IG9uZQpvciB0aGUgb3RoZXIgaXMgZ29pbmcgdG8gYmUgbmlnaCBpbXBvc3NpYmxlLiBBbmQgZG1h
XyogaXMgbm90IHJlYWxseSBhbgphcmVhIHdoZXJlIHdlIGNhbiBwcm91ZGx5IGNsYWltIHRoYXQg
cmV2ZXJ0cyBkb24ndCBoYXBwZW4uCgpDaGVlcnMsIERhbmllbAoKPiAKPiBQbGVhc2UgcmV2aWV3
IGFuZC9vciBjb21tZW50LAo+IENocmlzdGlhbi4gCj4gCj4gCgotLSAKRGFuaWVsIFZldHRlcgpT
b2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
