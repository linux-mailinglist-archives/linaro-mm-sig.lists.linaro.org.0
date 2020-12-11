Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3979C2D7FDE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 21:22:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64CBD66722
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 20:22:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5686B66723; Fri, 11 Dec 2020 20:22:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AF0266719;
	Fri, 11 Dec 2020 20:22:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9692C66714
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 20:21:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7DD9266719; Fri, 11 Dec 2020 20:21:57 +0000 (UTC)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by lists.linaro.org (Postfix) with ESMTPS id 012A666714
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 20:21:56 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id e7so12321051ljg.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Dec 2020 12:21:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lMZxDCK3EHPV415eTfAWmt24gOYNu8m5s7i1OWUhO90=;
 b=PAW4pQk4wdk5eFcCL9O2di4s92qbJCrqa3zND0XNYX/E3Q+NMaUdNKf8YkhfOXN/zN
 sxct6kyO5iIp5AxiC+a2gzZ0AesC9TgB9h3nh37+3lbSMbE4gV/DMrPqMUaZTKXBQM+e
 srhCsdTRtGxfNyc+LC/x+R8CxLywH0z08hen9UZuUeT9W15kqN4q8VauuPHVl1enJl+k
 TTeoEhWWIA2ukndPYFg69ucTYL99D4Wq93DYmp9eef9cG0LCN3oeb+HPGt1TH4QFG0zi
 jOjt4P9DOzJCjR87RXshY7udsOTEiHqI4RaD17dZdgJHhP02OCW0nP2hLRq45FCq1X17
 njiw==
X-Gm-Message-State: AOAM532WV4107BOXQcZYpEVzNZqpseQjL6h4RDtQZq7jcprzOGVEMs+m
 65Eeekcc6glyf/l8QOdNl6vk5UqCJTaRQuiFwpv7EKLt
X-Google-Smtp-Source: ABdhPJxICfsPv5gZgl9FHRPwfpWkwc/udxsFzWzWt2wOYhJdXcGUw9M3QJjshG3dpf6olNAdPGyY3xr3ppjhjL1s6XM=
X-Received: by 2002:a05:651c:286:: with SMTP id
 b6mr5684677ljo.232.1607718114626; 
 Fri, 11 Dec 2020 12:21:54 -0800 (PST)
MIME-Version: 1.0
References: <20201210044400.1080308-1-hridya@google.com>
 <b5adfe46-8615-5821-d092-2b93feed5b79@amd.com>
 <X9H0JREcdxDsMtLX@kroah.com> <20201210102727.GE401619@phenom.ffwll.local>
 <X9H+3AP1q39aMxeb@kroah.com>
 <CAKMK7uFD3fE01Li3JOpHpzP7313OT3xpcjBwzSVjrCGAmab2Zg@mail.gmail.com>
 <X9IPhEkcZO+Ut5RH@kroah.com>
 <CAKMK7uEM636NjEcxLfsKJa9H71i0mkQ3dsT3yWwHTcVFk4r+Sg@mail.gmail.com>
In-Reply-To: <CAKMK7uEM636NjEcxLfsKJa9H71i0mkQ3dsT3yWwHTcVFk4r+Sg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 11 Dec 2020 12:21:43 -0800
Message-ID: <CALAqxLWr7NgVszBMxTV=_LXKC3a24YzwXKjSdXuLdP5xKGue1w@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Hridya Valsaraju <hridya@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: Add the capability to expose
	DMA-BUF stats in sysfs
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgNToxMCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDE6MDYgUE0gR3JlZyBLSCA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4gT24gVGh1LCBEZWMgMTAsIDIw
MjAgYXQgMTI6MjY6MDFQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+ID4gT24gVGh1
LCBEZWMgMTAsIDIwMjAgYXQgMTE6NTUgQU0gR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlv
bi5vcmc+IHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDExOjI3OjI3QU0g
KzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+ID4gPiBUaGlzIG9ubHkgc2hvd3Mgc2hh
cmVkIG1lbW9yeSwgc28gaXQgZG9lcyBzbWVsbCBhIGxvdCBsaWtlICRzcGVjaWZpY19pc3N1ZQo+
ID4gPiA+ID4gYW5kIHdlJ3JlIGRlc2lnbmluZyBhIG5hcnJvdyBzb2x1dGlvbiBmb3IgdGhhdCBh
bmQgdGhlbiBoYXZlIHRvIGNhcnJ5IGl0Cj4gPiA+ID4gPiBmb3JldmVyLgo+ID4gPiA+Cj4gPiA+
ID4gSSB0aGluayB0aGUgImlzc3VlIiBpcyB0aGF0IHRoaXMgd2FzIGEgZmVhdHVyZSBmcm9tIGlv
biB0aGF0IHBlb3BsZQo+ID4gPiA+ICJtaXNzZWQiIGluIHRoZSBkbWFidWYgbW92ZS4gIFRha2lu
ZyBhd2F5IHRoZSBhYmlsaXR5IHRvIHNlZSB3aGF0IGtpbmQKPiA+ID4gPiBvZiBhbGxvY2F0aW9u
cyB3ZXJlIGJlaW5nIG1hZGUgZGlkbid0IG1ha2UgYSBsb3Qgb2YgZGVidWdnaW5nIHRvb2xzCj4g
PiA+ID4gaGFwcHkgOigKPiA+ID4KPiA+ID4gSWYgdGhpcyBpcyBqdXN0IGZvciBkbWEtaGVhcHMg
dGhlbiB3aHkgZG9uJ3Qgd2UgYWRkIHRoZSBzdHVmZiBiYWNrCj4gPiA+IG92ZXIgdGhlcmU/IEl0
IHJlaW5mb3JjZXMgbW9yZSB0aGF0IHRoZSBhbmRyb2lkIGdwdSBzdGFjayBhbmQgdGhlCj4gPiA+
IG5vbi1hbmRyb2lkIGdwdSBzdGFjayBvbiBsaW51eCBhcmUgZmFpcmx5IGRpZmZlcmVudCBpbiBm
dW5kYW1lbnRhbAo+ID4gPiB3YXlzLCBidXQgdGhhdCdzIG5vdCByZWFsbHkgbmV3Lgo+ID4KPiA+
IEJhY2sgIm92ZXIgd2hlcmUiPwo+ID4KPiA+IGRtYS1idWZzIGFyZSBub3Qgb25seSB1c2VkIGZv
ciB0aGUgZ3JhcGhpY3Mgc3RhY2sgb24gYW5kcm9pZCBmcm9tIHdoYXQgSQo+ID4gY2FuIHRlbGws
IHNvIHRoaXMgc2hvdWxkbid0IGJlIGEgZ3B1LXNwZWNpZmljIGlzc3VlLgo+Cj4gZG1hLWJ1ZiBo
ZWFwcyBleGlzdCBiZWNhdXNlIGFuZHJvaWQsIG1vc3RseSBiZWNhdXNlIGdvb2dsZSBtYW5kYXRl
cwo+IGl0LgoKU28sIEkgZG9uJ3QgdGhpbmsgdGhhdCdzIGZhaXIuCgpkbWEtYnVmIGhlYXBzIGFu
ZCBJT04gYmVmb3JlIGV4aXN0IGJlY2F1c2UgaXQgc29sdmVzIGEgcHJvYmxlbSB0aGV5CmhhdmUg
Zm9yIGFsbG9jYXRpbmcgc2hhcmVkIGJ1ZmZlcnMgZm9yIG11bHRpcGxlIGNvbXBsaWNhdGVkCm11
bHRpLWRldmljZSBwaXBlbGluZXMgd2hlcmUgdGhlIHZhcmlvdXMgZGV2aWNlcyBoYXZlIGNvbnN0
cmFpbnRzLgpJdCdzIG5vdCBzdHJpY3RseSByZXF1aXJlZFsxXSwgYXMgeW91ciBuZXh0IHBvaW50
IG1ha2VzIGNsZWFyIChhbG9uZwp3aXRoIENocm9tZU9TJ3MgQW5kcm9pZCBub3QgdXNpbmcgaXQp
LgoKPiBUaGVyZSdzIG5vdCBhIHdob2xlIGxvdCAobWVhbmluZyB6ZXJvKSBvZiBhY3R1YWxseSBv
cGVuIGdwdSBzdGFja3MKPiBhcm91bmQgdGhhdCBydW4gb24gYW5kcm9pZCBhbmQgdXNlIGRtYS1i
dWYgaGVhcHMgbGlrZSBhcHByb3ZlZCBnb29nbGUKPiBzeXN0ZW1zLCBsYXJnZWx5IGJlY2F1c2Ug
dGhlIGdyYWxsb2MgaW1wbGVtZW50YXRpb24gaW4gbWVzYSBqdXN0Cj4gZG9lc250LgoKU28geWVz
LCBkYjg0NWMgY3VycmVudGx5IHVzZXMgdGhlIGdibV9ncmFsbG9jLCB3aGljaCBkb2Vzbid0IHVz
ZQpkbWFidWYgaGVhcHMgb3IgSU9OLgoKVGhhdCBzYWlkLCB0aGUgcmVzdWx0aW5nIHN5c3RlbSBz
dGlsbCB1c2VzIHF1aXRlIGEgbnVtYmVyIG9mIGRtYWJ1ZnMsCmFzIEhyaWR5YSdzIHBhdGNoIHNo
b3dzOgo9PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI4NDM1L2V4cG9ydGVyX25hbWUgPD09CmRybQo9
PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI4NDM1L2Rldl9tYXBfaW5mbyA8PT0KPT0+IC9zeXMva2Vy
bmVsL2RtYWJ1Zi8yODQzNS9zaXplIDw9PQoxNjM4NAo9PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI4
MTYxL2V4cG9ydGVyX25hbWUgPD09CmRybQo9PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI4MTYxL2Rl
dl9tYXBfaW5mbyA8PT0KPT0+IC9zeXMva2VybmVsL2RtYWJ1Zi8yODE2MS9zaXplIDw9PQo1MjQy
ODgKPT0+IC9zeXMva2VybmVsL2RtYWJ1Zi8zMDkyNC9leHBvcnRlcl9uYW1lIDw9PQpkcm0KPT0+
IC9zeXMva2VybmVsL2RtYWJ1Zi8zMDkyNC9kZXZfbWFwX2luZm8gPD09Cj09PiAvc3lzL2tlcm5l
bC9kbWFidWYvMzA5MjQvc2l6ZSA8PT0KODE5Mgo9PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI2ODgw
L2V4cG9ydGVyX25hbWUgPD09CmRybQo9PT4gL3N5cy9rZXJuZWwvZG1hYnVmLzI2ODgwL2Rldl9t
YXBfaW5mbyA8PT0KPT0+IC9zeXMva2VybmVsL2RtYWJ1Zi8yNjg4MC9zaXplIDw9PQoyNjIxNDQK
Li4uCgpTbyBldmVuIHdoZW4gZGV2aWNlcyBhcmUgbm90IHVzaW5nIGRtYS1idWYgaGVhcHMgKHdo
aWNoIEkgZ2V0LCB5b3UKaGF2ZSBhbiBheGUgdG8gZ3JpbmQgd2l0aCA6KSwgaGF2aW5nIHNvbWUg
d2F5IHRvIGNvbGxlY3QgdXNlZnVsIHN0YXRzCmZvciBkbWFidWZzIGluIHVzZSBjYW4gYmUgdmFs
dWFibGUuCgooQWxzbyBvbmUgbWlnaHQgbm90ZSwgdGhlIGRiODQ1YyBhbHNvIGRvZXNuJ3QgaGF2
ZSBtYW55IGNvbnN0cmFpbmVkCmRldmljZXMsIGFuZCB3ZSd2ZSBub3QgeWV0IGVuYWJsZWQgaHcg
Y29kZWMgc3VwcG9ydCBvciBjYW1lcmEKcGlwZWxpbmVzLCBzbyBpdCBhdm9pZHMgbXVjaCBvZiB0
aGUgY29tcGxleGl0eSB0aGF0IElPTi9kbWEtYnVmIGhlYXBzCndhcyBjcmVhdGVkIHRvIHNvbHZl
KQoKPiBTbyBpZiBhbmRyb2lkIG5lZWRzIHNvbWUgcXVpY2sgZGVidWcgb3V0cHV0IGluIHN5c2Zz
LCB3ZSBjYW4ganVzdCBhZGQKPiB0aGF0IGluIGRtYS1idWYgaGVhcHMsIGZvciBhbmRyb2lkIG9u
bHksIHByb2JsZW0gc29sdmVkLiBBbmQgbXVjaCBsZXNzCj4gYW5ub3lpbmcgcmV2aWV3IHRvIG1h
a2Ugc3VyZSBpdCBhY3R1YWxseSBmaXRzIGludG8gdGhlIHdpZGVyIGVjb3N5c3RlbQo+IGJlY2F1
c2UgYXMtaXMgKGFuZCBJJ20gbm90IHNlZWluZyB0aGF0IGNoYW5jZSBhbnl0aW1lIHNvb24pLCBk
bWEtYnVmCj4gaGVhcHMgaXMgZm9yIGFuZHJvaWQgb25seS4gZG1hLWJ1ZiBhdCBsYXJnZSBpc24n
dCwgc28gbWVyZ2luZyBhIGRlYnVnCj4gb3V0cHV0IHN5c2ZzIGFwaSB0aGF0J3MganVzdCBmb3Ig
YW5kcm9pZCBidXQgbWlzc2VzIGEgdG9uIG9mIHRoZSBtb3JlCj4gZ2VuZXJpYyBmZWF0dXJlcyBh
bmQgc2VtYW50aWNzIG9mIGRtYS1idWYgaXMgbm90IGdyZWF0LgoKVGhlIGludGVudCBiZWhpbmQg
dGhpcyBwYXRjaCBpcyAqbm90KiB0byBjcmVhdGUgbW9yZSBBbmRyb2lkLXNwZWNpZmljCmxvZ2lj
LCBidXQgdG8gcHJvdmlkZSB1c2VmdWwgaW5mb3JtYXRpb24gZ2VuZXJpY2FsbHkuICBJbmRlZWQs
IEFuZHJvaWQKZG9lcyB1c2UgZG1hYnVmcyBoZWF2aWx5IGZvciBwYXNzaW5nIGJ1ZmZlcnMgYXJv
dW5kLCBhbmQgeW91ciBwb2ludAp0aGF0IG5vdCBhbGwgc3lzdGVtcyBoYW5kbGUgZ3JhcGhpY3Mg
YnVmZmVycyB0aGF0IHdheSBpcyB2YWxpZCwgYW5kCml0J3MgaW1wb3J0YW50IHdlIGRvbid0IGJh
a2UgYW55IEFuZHJvaWQtaXNtcyBpbnRvIHRoZSBpbnRlcmZhY2UuIEJ1dApiZWluZyBhYmxlIHRv
IGNvbGxlY3QgZGF0YSBhYm91dCB0aGUgYWN0aXZlIGRtYWJ1ZnMgaW4gYSBzeXN0ZW0gaXMKdXNl
ZnVsLCByZWdhcmRsZXNzIG9mIGhvdyByZWdhcmRsZXNzIG9mIGhvdyB0aGUgZG1hLWJ1ZiB3YXMg
YWxsb2NhdGVkLgoKU28gSSdkIG11Y2ggcmF0aGVyIHNlZSB5b3VyIGZlZWRiYWNrIG9uIGhvdyB3
ZSBleHBvc2Ugb3RoZXIgYXNwZWN0cyBvZgpkbWFidWZzIChkbWFfcmVzdiwgZXhwb3J0ZXIgZGV2
aWNlcywgYXR0YWNobWVudCBsaW5rcykgaW50ZWdyYXRlZCwKcmF0aGVyIHRoZW4gdHJ5aW5nIHRv
IGdoZXR0b2l6ZSBpdCBhcyBhbmRyb2lkLW9ubHkgYW5kIGxpbWl0IGl0IHRvIHRoZQpkbWFidWYg
aGVhcHMsIHdoZXJlIEkgZG9uJ3QgdGhpbmsgaXQgbWFrZXMgYXMgbXVjaCBzZW5zZSB0byBhZGQu
Cgp0aGFua3MKLWpvaG4KClsxXSBPdXQgb2YgdGhlIGJveCwgdGhlIGNvZGVjMiBjb2RlIGFkZGVk
IGEgZmV3IHllYXJzIGJhY2sgZG9lcwpkaXJlY3RseSBjYWxsIHRvIElPTiAoYW5kIG5vdyBkbWFi
dWYgaGVhcHMpIGZvciBzeXN0ZW0gYnVmZmVycywgYnV0IGl0CmNhbiBiZSBjb25maWd1cmVkIGRp
ZmZlcmVudGx5IGFzIGl0J3MgdXNlZCBpbiBDaHJvbWVPUydzIEFuZHJvaWQgdG9vLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
