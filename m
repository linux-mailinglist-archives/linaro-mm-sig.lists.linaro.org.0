Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F48021A221
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 16:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A71E660900
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:29:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 99B9C60C31; Thu,  9 Jul 2020 14:29:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 878F661624;
	Thu,  9 Jul 2020 14:28:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8432A60900
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 14:28:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6EC5961624; Thu,  9 Jul 2020 14:28:42 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id D973D60900
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 14:28:40 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f2so2594715wrp.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 07:28:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=7tqZDmODxpfwBrZOHP4mWeKzffcGLgXr9vfeGZmKNBU=;
 b=t1hDr60fSYT75+C1y443WICeSpzq21JrNVNe7UZHoCZCNVG4YWTm4TgNFq+dLZolF3
 A5ngzOdnWj2TNt5T51tXAVRf6xtkDuF+UCvslYvIe/v+YU+Hu/X9QRPrDp5NU5H7e6fd
 CMJ9+bdqra8/qmH82t/rFxAoej+I6QWyqfb2SN3GXZiqkc4MIc4fguKl0jK7ftmZiIE9
 tfaOYZOhrdbfWP9ejOUMSrd/M7NLRV3s9Ei/H5G3prv6g5TsYThqn9l3n4m7SfIsQbTu
 FCJzZiiAk0Mo0MJnNwub57RFeAtyyeulypJQX0egL0xXDyardLY8Kvmxy0RHLSa5pFp9
 3wCg==
X-Gm-Message-State: AOAM533q7+/l5DKKbRBLRuMC+BAYZYgRFgHsqOpwwFxfGgE6G55+odE7
 HBuzdacFvkwXDsRgwsQ7K+o=
X-Google-Smtp-Source: ABdhPJyn8DKog/l6kOIY+x27ufbwVcpLzTGrf++rITJqcgOZsb4u39XLOgBaVXLNO9Fzi5QL+9FCzw==
X-Received: by 2002:adf:f14c:: with SMTP id y12mr62667346wro.30.1594304919952; 
 Thu, 09 Jul 2020 07:28:39 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id d28sm4735671wrc.50.2020.07.09.07.28.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 07:28:39 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
 <20200709080458.GO3278063@phenom.ffwll.local>
 <CAPj87rPtD04099=sBzL2jKN6NNFNnM-hH3qfOLL10nPoF==VbA@mail.gmail.com>
 <CAKMK7uG6T+86+11CKpRpEY8v6_Xrm=hWv01tzPPLHq_H7p-AuA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <4f42300f-9733-5536-ef25-95ed8f25bcf8@gmail.com>
Date: Thu, 9 Jul 2020 16:28:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uG6T+86+11CKpRpEY8v6_Xrm=hWv01tzPPLHq_H7p-AuA@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/25] dma-buf.rst: Document
 why idenfinite fences are a bad idea
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

QW0gMDkuMDcuMjAgdW0gMTQ6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFRodSwgSnVs
IDksIDIwMjAgYXQgMjoxMSBQTSBEYW5pZWwgU3RvbmUgPGRhbmllbEBmb29pc2hiYXIub3JnPiB3
cm90ZToKPj4gT24gVGh1LCA5IEp1bCAyMDIwIGF0IDA5OjA1LCBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWxAZmZ3bGwuY2g+IHdyb3RlOgo+Pj4gT24gVGh1LCBKdWwgMDksIDIwMjAgYXQgMDg6MzY6NDNB
TSArMDEwMCwgRGFuaWVsIFN0b25lIHdyb3RlOgo+Pj4+IE9uIFR1ZSwgNyBKdWwgMjAyMCBhdCAy
MToxMywgRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4+Pj4+
IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1
c3MsIGxldCdzCj4+Pj4+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxsLgo+Pj4+IFRo
YW5rcyBmb3Igd3JpdGluZyB0aGlzIHVwISBJIHdvbmRlciBpZiBhbnkgb2YgdGhlIG5vdGVzIGZy
b20gbXkgcmVwbHkKPj4+PiB0byB0aGUgcHJldmlvdXMtdmVyc2lvbiB0aHJlYWQgd291bGQgYmUg
aGVscGZ1bCB0byBtb3JlIGV4cGxpY2l0bHkKPj4+PiBlbmNvZGUgdGhlIGNhcnJvdCBvZiBkbWEt
ZmVuY2UncyBwb3NpdGl2ZSBndWFyYW50ZWVzLCByYXRoZXIgdGhhbiBqdXN0Cj4+Pj4gdGhlIHN0
aWNrIG9mICdkb24ndCBkbyB0aGlzJy4gOykgRWl0aGVyIHdheSwgdGhpcyBpczoKPj4+IEkgdGhp
bmsgdGhlIGNhcnJvdCBzaG91bGQgZ28gaW50byB0aGUgaW50cm8gc2VjdGlvbiBmb3IgZG1hLWZl
bmNlLCB0aGlzCj4+PiBzZWN0aW9uIGhlcmUgaXMgdmVyeSBtdWNoIGp1c3QgdGhlICJkb24ndCBk
byB0aGlzIiBwYXJ0LiBUaGUgcHJldmlvdXMKPj4+IHBhdGNoZXMgaGF2ZSBhbiBhdHRlbXB0IGF0
IGVuY29kaW5nIHRoaXMgYSBiaXQsIG1heWJlIHNlZSB3aGV0aGVyIHRoZXJlJ3MKPj4+IGEgcGxh
Y2UgZm9yIHlvdXIgcmVwbHkgKG9yIHBhcnRzIG9mIGl0KSB0byBmaXQ/Cj4+IFNvdW5kcyBnb29k
IHRvIG1lLgo+Pgo+Pj4+IEFja2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3Jh
LmNvbT4KPj4+Pgo+Pj4+PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0
ZXh0IHNob3VsZCBiZSBtb3JlIGV4cGxpY2l0IGluCj4+Pj4+IGZsYXQgb3V0IG1hbmRhdGluZyB0
aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nIGNvbXB1dGUKPj4+Pj4g
d29ya2xvYWRzIG9yIHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2Vk
Lgo+Pj4+IC4uLiBvciB3aGV0aGVyIHdlIGp1c3Qgc2F5IHRoYXQgeW91IGNhbiBuZXZlciB1c2Ug
ZG1hLWZlbmNlIGluCj4+Pj4gY29uanVuY3Rpb24gd2l0aCB1c2VycHRyLgo+Pj4gVWggdXNlcnB0
ciBpcyBlbnRpcmVseSBkaWZmZXJlbnQgdGhpbmcuIFRoYXQgb25lIGlzIG9rLiBJdCdzIHVzZXJw
c2FjZQo+Pj4gZmVuY2VzIG9yIGdwdSBmdXRleGVzIG9yIGZ1dHVyZSBmZW5jZXMgb3Igd2hhdGV2
ZXIgd2Ugd2FudCB0byBjYWxsIHRoZW0uCj4+PiBPciBpcyB0aGVyZSBzb21lIG90aGVyIGNvbmZ1
c2lvbiBoZXJlPy4KPj4gSSBtZWFuIGdlbmVyYXRpbmcgYSBkbWFfZmVuY2UgZnJvbSBhIGJhdGNo
IHdoaWNoIHdpbGwgdHJ5IHRvIHBhZ2UgaW4KPj4gdXNlcnB0ci4gR2l2ZW4gdGhhdCB1c2VycHRy
IGNvdWxkIGJlIGJhY2tlZCBieSBhYnNvbHV0ZWx5IGFueXRoaW5nIGF0Cj4+IGFsbCwgaXQgZG9l
c24ndCBzZWVtIHNtYXJ0IHRvIGFsbG93IGZlbmNlcyB0byByZWx5IG9uIGEgcG9pbnRlciB0byBh
bgo+PiBtbWFwJ2VkIE5GUyBmaWxlLiBTbyBpdCBzZWVtcyBsaWtlIGJhdGNoZXMgc2hvdWxkIGJl
IG11dHVhbGx5Cj4+IGV4Y2x1c2l2ZSBiZXR3ZWVuIGFyYml0cmFyeSBTVk0gdXNlcnB0ciBhbmQg
Z2VuZXJhdGluZyBhIGRtYS1mZW5jZT8KPiBMb2NraW5nIGlzIFRyaWNreSAodG0pIGJ1dCBlc3Nl
bnRpYWxseSB3aGF0IGF0IGxlYXN0IGFtZGdwdSBkb2VzIGlzCj4gcHVsbCBpbiB0aGUgYmFja2lu
ZyBzdG9yYWdlIGJlZm9yZSB3ZSBwdWJsaXNoIGFueSBkbWEtZmVuY2UuIEFuZCB0aGVuCj4gc29t
ZSBzZXJpb3VzIGxvY2tpbmcgbWFnaWMgdG8gbWFrZSBzdXJlIHRoYXQgZG9lc24ndCByYWNlIHdp
dGggYSBjb3JlCj4gbW0gaW52YWxpZGF0aW9uIGV2ZW50LiBTbyBmb3IgeW91ciBjYXNlIGhlcmUg
dGhlIGNzIGlvY3RsIGp1c3QgYmxvY2tzCj4gdW50aWwgdGhlIG5mcyBwYWdlcyBhcmUgcHVsbGVk
IGluLgoKWWVhaCwgd2UgaGFkIHNvbWUgaXRlcmF0aW9ucyB1bnRpbCBhbGwgd2FzIHNldHRsZWQu
CgpCYXNpYyBpZGVhIGlzIHRoZSBmb2xsb3dpbmc6CjEuIEhhdmUgYSBzZXF1ZW5jZSBjb3VudGVy
IGluY3JlYXNlZCB3aGVuZXZlciBhIGNoYW5nZSB0byB0aGUgcGFnZSAKdGFibGVzIGhhcHBlbnMu
CjIuIER1cmluZyBDUyBncmFiIHRoZSBjdXJyZW50IHZhbHVlIG9mIHRoaXMgY291bnRlci4KMy4g
R2V0IGFsbCB0aGUgcGFnZXMgeW91IG5lZWQgaW4gYW4gYXJyYXkuCjQuIFByZXBhcmUgQ1MsIGdy
YWIgdGhlIGxvdyBsZXZlbCBsb2NrIHRoZSBNTSBub3RpZmllciB3YWl0cyBmb3IgYW5kIApkb3Vi
bGUgY2hlY2sgdGhlIGNvdW50ZXIuCjUuIElmIHRoZSBjb3VudGVyIGlzIHN0aWxsIHRoZSBzYW1l
IGFsbCBpcyB3ZWxsIGFuZCB0aGUgRE1BLWZlbmNlIHB1c2hlZCAKdG8gdGhlIGhhcmR3YXJlLgo2
LiBJZiB0aGUgY291bnRlciBoYXMgY2hhbmdlZCByZXBlYXQuCgpDYW4gcmVzdWx0IGluIGEgbmlj
ZSBsaXZlIGxvY2sgd2hlbiB5b3UgY29uc3RhbnRseSBwYWdlIHRoaW5ncyBpbi9vdXQsIApidXQg
dGhhdCBpcyBleHBlY3RlZCBiZWhhdmlvci4KCkNocmlzdGlhbi4KCj4KPiBPbmNlIHdlJ3ZlIGNv
bW1pdHRlZCBmb3IgdGhlIGRtYS1mZW5jZSBpdCdzIG9ubHkgdGhlIG90aGVyIHdheSByb3VuZCwK
PiBpLmUuIGNvcmUgbW0gd2lsbCBzdGFsbCBvbiB0aGUgZG1hLWZlbmNlIGlmIGl0IHdhbnRzIHRv
IHRocm93IG91dAo+IHRoZXNlIHBhZ2VzIGFnYWluLiBNb3JlIG9yIGxlc3MgYXQgbGVhc3QuIFRo
YXQgd2F5IHdlIG5ldmVyIGhhdmUgYQo+IGRtYS1mZW5jZSBkZXBlbmRpbmcgdXBvbiBhbnkgY29y
ZSBtbSBvcGVyYXRpb25zLiBUaGUgb25seSBwYWluIGhlcmUgaXMKPiB0aGF0IHRoaXMgc2V2ZXJl
bHkgbGltaXRzIHdoYXQgeW91IGNhbiBkbyBpbiB0aGUgY3JpdGljYWwgcGF0aCB0b3dhcmRzCj4g
c2lnbmFsbGluZyBhIGRtYS1mZW5jZSwgYmVjYXVzZSB0aGUgdGxkciBpcyAibm8gaW50ZXJhY3Rp
bmcgd2l0aCBjb3JlCj4gbW0gYXQgYWxsIGFsbG93ZWQiLgo+Cj4+IFNwZWFraW5nIG9mIGVudGly
ZWx5IGRpZmZlcmVudCB0aGluZ3MgLi4uIHRoZSB2aXJ0aW8tZ3B1IGJpdCByZWFsbHkKPj4gZG9l
c24ndCBiZWxvbmcgaW4gdGhpcyBwYXRjaC4KPiBPb3BzLCBkdW5ubyB3aGVyZSBJIGxvc3QgdGhh
dCBhcyBhIHNwYXJhdGUgcGF0Y2guIFdpbGwgc3BsaXQgb3V0IGFnYWluIDotKAo+IC1EYW5pZWwK
Pgo+PiBDaGVlcnMsCj4+IERhbmllbAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
