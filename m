Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D141F98EF7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 11:15:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E969461836
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 09:15:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D8E6461868; Thu, 22 Aug 2019 09:15:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 247C861846;
	Thu, 22 Aug 2019 09:14:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DDE4461810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:14:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C46E561846; Thu, 22 Aug 2019 09:14:31 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id A5D4261810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:14:30 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id z11so4683546wrt.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 02:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=XtOL8gNtG+hmvgLUTNARZ9IJPPatmS0hR06XQs4cIx8=;
 b=sB4RbLqkyVdoBX0coCEgX/Qy7hpgGTyzSR984wEPYUs0Pl+ieDUZmUI91Fq7JJnj3F
 J5dHQGgdlG+wum0UlTW45qvFVW49AI+USNOQ2//gG0OU0Z22lX7av5MtBN0zD6KqGBcm
 sK2J9olgdOANNE3g4sMhPf7KnS4IBpdEfkWokCec3YnA0LhHqgvsW69Vc6dXkDjm3iFU
 q8vi/y8GM0S92TCdQ9a7w09fHhlaK1/4w6EK7GrK78Astu/P0lnMPaOXUFtfXYhAQlXM
 y6jox7lLRlBOGV5PC9SiQBQ9zTanTAG1KazL8e6L8ge6NcBogjj1eyew7KcK06P6Eu4O
 06Dg==
X-Gm-Message-State: APjAAAW+rhj8ZkYoP8eFhkGJpfLXACbSZSepUFMJtyqGTnS87R3yCDMv
 TcihtlCgmS7KyrhK8u3z+LA=
X-Google-Smtp-Source: APXvYqy+KJzFiStV4RUvRR1wqwN49akFiyyYPp9S1YCSkTvE81mGV9LfPJTLQHYZqIkHYJsJIezaGA==
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr46614516wro.302.1566465269850; 
 Thu, 22 Aug 2019 02:14:29 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id c187sm7114923wmd.39.2019.08.22.02.14.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 02:14:29 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <156641829139.20466.3485292236947741339@skylake-alporthouse-com>
 <CAKMK7uFAreLt64Y9btk4VNxo6a2YMgXrg136z0uuyy5B3SMS+A@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <03244148-a560-47e2-e992-a3ea873e7bd1@gmail.com>
Date: Thu, 22 Aug 2019 11:14:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFAreLt64Y9btk4VNxo6a2YMgXrg136z0uuyy5B3SMS+A@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RFC] replacing dma_resv API
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjEuMDguMTkgdW0gMjI6MjIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgQXVn
IDIxLCAyMDE5IGF0IDEwOjExIFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPiB3cm90ZToKPj4gUXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMx
OjM3KQo+Pj4gSGkgZXZlcnlvbmUsCj4+Pgo+Pj4gSW4gcHJldmlvdXMgZGlzY3Vzc2lvbiBpdCBz
dXJmYWNlZCB0aGF0IGRpZmZlcmVudCBkcml2ZXJzIHVzZSB0aGUgc2hhcmVkIGFuZCBleHBsaWNp
dCBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aXRoIGRpZmZlcmVudCBtZWFuaW5ncy4K
Pj4+Cj4+PiBUaGlzIGlzIHByb2JsZW1hdGljIHdoZW4gd2Ugc2hhcmUgYnVmZmVycyBiZXR3ZWVu
IHRob3NlIGRyaXZlcnMgYW5kIHJlcXVpcmVtZW50cyBmb3IgaW1wbGljaXQgYW5kIGV4cGxpY2l0
IHN5bmNocm9uaXphdGlvbiBsZWFkZWQgdG8gcXVpdGUgYSBudW1iZXIgb2Ygd29ya2Fyb3VuZHMg
cmVsYXRlZCB0byB0aGlzLgo+Pj4KPj4+IFNvIEkgc3RhcnRlZCBhbiBlZmZvcnQgdG8gZ2V0IGFs
bCBkcml2ZXJzIGJhY2sgdG8gYSBjb21tb24gdW5kZXJzdGFuZGluZyBvZiB3aGF0IHRoZSBmZW5j
ZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCBtZWFuIGFuZCBiZSBhYmxlIHRvIHVzZSB0aGUgb2Jq
ZWN0IGZvciBkaWZmZXJlbnQga2luZCBvZiB3b3JrbG9hZHMgaW5kZXBlbmRlbnQgb2YgdGhlIGNs
YXNzaWMgRFJNIGNvbW1hbmQgc3VibWlzc2lvbiBpbnRlcmZhY2UuCj4+Pgo+Pj4gVGhlIHJlc3Vs
dCBpcyB0aGlzIHBhdGNoIHNldCB3aGljaCBtb2RpZmllcyB0aGUgZG1hX3Jlc3YgQVBJIHRvIGdl
dCBhd2F5IGZyb20gYSBzaW5nbGUgZXhwbGljaXQgZmVuY2UgYW5kIG11bHRpcGxlIHNoYXJlZCBm
ZW5jZXMsIHRvd2FyZHMgYSBub3RhdGlvbiB3aGVyZSB3ZSBoYXZlIGV4cGxpY2l0IGNhdGVnb3Jp
ZXMgZm9yIHdyaXRlcnMsIHJlYWRlcnMgYW5kIG90aGVycy4KPj4gRndpdywgSSB3b3VsZCBsaWtl
IHRoZSBkaXN0aW5jdGlvbiBoZXJlIGJldHdlZW4gb3B0aW9uYWwgZmVuY2VzCj4+ICh3cml0ZXJz
LCByZWFkZXJzKSBhbmQgbWFuZGF0b3J5IGZlbmNlcyAob3RoZXJzKS4gVGhlIG9wdGlvbmFsIGZl
bmNlcwo+PiBhcmUgd2hlcmUgd2UgcHV0IHRoZSBpbXBsaWNpdCBmZW5jZSB0cmFja2luZyB0aGF0
IGNsZXZlciB1c2Vyc3BhY2Ugd291bGQKPj4gcmF0aGVyIGF2b2lkLiBUaGUgbWFuZGF0b3J5IGZl
bmNlcyAoSSB3b3VsZCBjYWxsIGludGVybmFsKSBpcyB3aGVyZSB3ZQo+PiBwdXQgdGhlIGZlbmNl
cyBmb3IgdHJhY2tpbmcgbWlncmF0aW9uIHRoYXQgdXNlcnNwYWNlIGNhbiBub3Qgb3B0IG91dCBv
Zi4KPiBJIHRoaW5rIHRoaXMgd291bGQgbWFrZSBzZW5zZSwgYW5kIGlzIGtpbmRhIHdoYXQgSSBl
eHBlY3RlZCBoZXJlLgoKWWVhaCwgZXhhY3RseSB0aGF0J3MgdGhlIGludGVudGlvbiBoZXJlLgoK
QmFzaWMgaWRlYSBpcyB0byBncm91cCB0aGUgZmVuY2VzIGludG8gdGhlIGNhdGVnb3JpZXMgb2Yg
InlvdSBhbHdheXMgCm5lZWQgdG8gd2FpdCBmb3Igd2hlbiBkb2luZyBpbXBsaWNpdCBzeW5jaHJv
bml6YXRpb24iICh3cml0ZXJzKSwgInlvdSAKb25seSBuZWVkIHRvIHdhaXQgZm9yIHRoZW0gd2hl
biB5b3Ugd2FudCB0byB3cml0ZSB0byB0aGUgb2JqZWN0IiAKKHJlYWRlcnMpIGFuZCAiaWdub3Jl
IHRoZW0gZm9yIGltcGxpY2l0IHN5bmNocm9uaXphdGlvbiIuCgo+IElmIChhbmQgSSB0aGluayB0
aGF0J3MgYSBodWdlIGlmKSB3ZSBjYW4gYWdyZWUgb24gd2hhdCB0aG9zZSBpbnRlcm5hbAo+IGZl
bmNlcyBhcmUuIFRoZXJlJ3MgYSBodWdlIGRpZmZlcmVuY2UgYmV0d2VlbiBpbnRlcm5hbCBmZW5j
ZXMgZm9yCj4gYnVmZmVyIG1vdmVzIChiZXR0ZXIgbm90IGlnbm9yZSB0aG9zZSkgYW5kIGludGVy
bmFsIGZlbmNlcyBsaWtlCj4gYW1ka2ZkJ3MgZXZpY3Rpb24gZmVuY2UgKGJldHRlciBpZ25vcmUg
dGhvc2UpLgoKWWVhaCwgdGhhdCdzIGV4YWN0bHkgd2h5IEkgd2FudCB0byBnZXQgYXdheSBmcm9t
IHRob3NlIGV4Y2x1c2l2ZS9zaGFyZWQgCm5hbWluZy4KCkZvciByZWFkZXJzL3dyaXRlcnMgSSBo
b3BlZCB0aGUgc2VtYW50aWMgd291bGQgYmUgbW9yZSBjbGVhciwgYnV0IHRoYXQncyAKZG9lc24n
dCBzZWVtcyB0byBiZSB0aGUgY2FzZS4KCj4gU28gd2hhdGV2ZXIgd2UgZG8gYWRkLCBpdCBiZXR0
ZXIgY29tZSB3aXRoIHJlYWxseSBjbGVhciBkb2NzIGFuZCBwcmV0dHkgZGlhZ3JhbXMgYWJvdXQg
d2hhdAo+IGl0J3Mgc3VwcG9zZWQgdG8gZG8sIGFuZCBob3cgaXQncyBzdXBwb3NlZCB0byBiZSB1
c2VkLiBPciB3ZSdyZSBqdXN0Cj4gYmFjayB0byB0aGUgY3VycmVudCBtZXNzIHdlJ3JlIGluLCB0
aW1lcyB0d28uCgpXZWxsIGRvY3VtZW50aW5nIGl0IGluIHRoZSBlbmQgaXMgY2xlYXJseSBhIGdv
b2QgaWRlYSwgYnV0IEkgZG9uJ3QgdGhpbmsgCndlIHNob3VsZCBzdGFydCB3aXRoIHRoYXQgYmVm
b3JlIHdlIGFjdHVhbGx5IGtub3cgd2hhdCB3ZSB3YW50IHRvIAppbXBsZW1lbnQgYW5kIGhvdyB3
ZSB3YW50IHRvIGltcGxlbWVudCBpdC4KCk90aGVyd2lzZSBJIHdvdWxkIHdyaXRlIHRvbnMgb2Yg
ZG9jdW1lbnRhdGlvbiB3aGljaCBjYW4gYmUgdGhyb3duIGF3YXkgCmFnYWluIGluIHRoZSBlbmQg
YmVjYXVzZSB3ZSBkZWNpZGVkIHRvIGRvbid0IGRvIGl0IHRoaXMgd2F5LgoKQ2hyaXN0aWFuLgoK
PiAtRGFuaWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
