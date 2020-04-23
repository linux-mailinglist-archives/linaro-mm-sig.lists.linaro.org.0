Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD8A1B6E23
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 08:25:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C90C2619E9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2020 06:25:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA3A866031; Fri, 24 Apr 2020 06:25:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48FBC6670A;
	Fri, 24 Apr 2020 05:30:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D7AF619C4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2020 14:51:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 094B5619D7; Thu, 23 Apr 2020 14:51:35 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by lists.linaro.org (Postfix) with ESMTPS id B3575619C4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2020 14:51:33 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f8so2445636plt.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2020 07:51:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n9579OtTCLif5IsmjfaMugY+P4SRRpDn94COWW+rKC8=;
 b=RJIPsEA6iKGLcH30kgOnHwr7pUq5XIn236wdVW2GjoOBl8rQY5AtfFwqXwGnqwnPRx
 EjaYrLiY4AahhDsfFZ316czaypYRRa93powcHemv6cahpUd5XoWT6p6kSUurqPXj1pi5
 xoiC0AgJ2vgNOHE+6fpCR89FfRZ23g8a2mVdAMczNvhLZ/136pkAZNOYkI3wZT+cl+Cq
 PEzWJPKJvxF6M6dAh3WKVJT4+gonxvmDVsPtPxCJRlkYiUJ+wKuxiVEiWHk0zGl6GHTj
 OSNmYE8rw5jqR1hF2Y1VSIoTX/0eD3o4/DfwDAs0ISO8/MOPfrl0I07Pym+JFGmaOIm5
 8TAg==
X-Gm-Message-State: AGi0PuaxgArvmjOna9QsxcMXIch0tuCi5dxIRjPRwxp5tOfpTIYwlvF9
 gw8eZiLwFYjLROMiqOfyOWGEAQ==
X-Google-Smtp-Source: APiQypIJPerMho/SwnFvX4bBmyPrOipYJLcCQKHKClc0G3/oxnjytm19nNfUINndfzodE7hR9nqT/w==
X-Received: by 2002:a17:90a:6fe4:: with SMTP id
 e91mr1116823pjk.28.1587653492470; 
 Thu, 23 Apr 2020 07:51:32 -0700 (PDT)
Received: from google.com ([2401:fa00:fc:1:28b:9f23:d296:c845])
 by smtp.gmail.com with ESMTPSA id p189sm2835561pfp.135.2020.04.23.07.51.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 07:51:31 -0700 (PDT)
Date: Thu, 23 Apr 2020 22:51:22 +0800
From: Martin Liu <liumartin@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <20200423145122.GA17542@google.com>
References: <20200407133002.3486387-1-daniel.vetter@ffwll.ch>
 <CAO_48GF5jM-L7bqnfvXSvbugAjYsYnE7rGokO7_LWQxHua0=wQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO_48GF5jM-L7bqnfvXSvbugAjYsYnE7rGokO7_LWQxHua0=wQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Fri, 24 Apr 2020 05:29:38 +0000
Cc: Todd Kjos <tkjos@android.com>, Chenbo Feng <fengc@google.com>,
 Greg Hackmann <ghackmann@google.com>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, minchan@kernel.org,
 Jenhao Chen <jenhaochen@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix SET_NAME ioctl uapi
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

T24gVGh1LCBBcHIgMDksIDIwMjAgYXQgMDk6Mjg6MTZBTSArMDUzMCwgU3VtaXQgU2Vtd2FsIHdy
b3RlOgo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLCBEYW5pZWwhCj4gCj4gCj4gT24gVHVlLCA3IEFw
ciAyMDIwIGF0IDE5OjAwLCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3
cm90ZToKPiA+Cj4gPiBUaGUgdWFwaSBpcyB0aGUgc2FtZSBvbiAzMiBhbmQgNjQgYml0LCBidXQg
dGhlIG51bWJlciBpc250LiBFdmVyeW9uZQo+ID4gd2hvIGJvdGNoZWQgdGhpcyBwbGVhc2UgcmUt
cmVhZDoKPiA+Cj4gPiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjQtcHJlcHJj
LWNwdS9pb2N0bC9ib3RjaGluZy11cC1pb2N0bHMuaHRtbAo+ID4KPiA+IEFsc28sIHRoZSB0eXBl
IGFyZ3VtZW50IGZvciB0aGUgaW9jdGwgbWFjcm9zIGlzIGZvciB0aGUgdHlwZSB0aGUgdm9pZAo+
ID4gX191c2VyICphcmcgcG9pbnRlciBwb2ludHMgYXQsIHdoaWNoIGluIHRoaXMgY2FzZSB3b3Vs
ZCBiZSB0aGUKPiA+IHZhcmlhYmxlLXNpemVkIGNoYXJbXSBvZiBhIDAgdGVybWluYXRlZCBzdHJp
bmcuIFNvIHRoaXMgd2FzIGJvdGNoZWQgaW4KPiA+IG1vcmUgdGhhbiBqdXN0IHRoZSB1c3VhbCB3
YXlzLgo+IAo+IFllcywgaXQgc2hvdWxkbid0IGhhdmUgcGFzc2VkIHRocm91Z2ggdGhlIGNyYWNr
czsgbXkgYXBvbG9naWVzIQo+IAo+ID4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+ID4gQ2M6IENoZW5ibyBGZW5nIDxmZW5nY0Bnb29nbGUuY29tPgo+ID4g
Q2M6IEdyZWcgSGFja21hbm4gPGdoYWNrbWFubkBnb29nbGUuY29tPgo+ID4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiBDYzog
bWluY2hhbkBrZXJuZWwub3JnCj4gPiBDYzogc3VyZW5iQGdvb2dsZS5jb20KPiA+IENjOiBqZW5o
YW9jaGVuQGdvb2dsZS5jb20KPiA+IENjOiBNYXJ0aW4gTGl1IDxsaXVtYXJ0aW5AZ29vZ2xlLmNv
bT4KPiAKPiBNYXJ0aW4sCj4gQ291bGQgSSByZXF1ZXN0IHlvdSB0byB0ZXN0IHRoaXMgb25lIHdp
dGggdGhlIDQgY29tYmluYXRpb25zIG9mIDMyLWJpdAo+IC8gNjQtYml0IHVzZXJzcGFjZSBhbmQg
a2VybmVsLCBhbmQgbGV0IHVzIGtub3cgdGhhdCBhbGwgNCBhcmUgd29ya2luZwo+IGFscmlnaHQ/
IElmIHllcywgcGxlYXNlIGNvbnNpZGVyIGdpdmluZyB5b3VyIHRlc3RlZC1ieSBoZXJlLgo+Ckhp
IFN1bWl0LCBEYW5pZWwsClNvcnJ5IGZvciBiZWluZyBsYXRlIHRvIHRoZSB0ZXN0cy4gSSBmaW5p
c2hlZCB0aGUgdGVzdHMgb24gMzIvNjQgYXBwcwp3aXRoIDY0IGJpdCBrZXJuZWwgYW5kIHRoZXkg
d2VyZSBmaW5lLiBVbmZvcnR1bmF0ZWx5LCBJIGNvdWxkbid0IGhhdmUgYSAzMgpiaXQga2VybmVs
IHRvIHJ1biB0aGUgdGVzdHMgc29tZWhvdy4gSG93ZXZlciwgdGhpcyBzaG91bGQgd29yayBmcm9t
IHRoZQpjb2RlIGxvZ2ljLiBIb3BlIHRoaXMgaXMgb2theSB0byB5b3UgYW5kIHRoYW5rcyBmb3Ig
VG9kZCdzIGhlbHAuCgpUZXN0ZWQtYnk6IE1hcnRpbiBMaXUgPGxpdW1hcnRpbkBnb29nbGUuY29t
PgpSZXZpZXdlZC1ieTogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+Cgo+ID4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiAt
LS0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgIHwgMyArKy0KPiA+ICBpbmNsdWRl
L3VhcGkvbGludXgvZG1hLWJ1Zi5oIHwgNCArKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+IGluZGV4IDU3
MGM5MjMwMjNlNi4uMWQ5MjNiOGU0YzU5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gQEAgLTM4
OCw3ICszODgsOCBAQCBzdGF0aWMgbG9uZyBkbWFfYnVmX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxl
LAo+ID4KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4KPiA+IC0gICAgICAgY2Fz
ZSBETUFfQlVGX1NFVF9OQU1FOgo+ID4gKyAgICAgICBjYXNlIERNQV9CVUZfU0VUX05BTUVfQToK
PiA+ICsgICAgICAgY2FzZSBETUFfQlVGX1NFVF9OQU1FX0I6Cj4gPiAgICAgICAgICAgICAgICAg
cmV0dXJuIGRtYV9idWZfc2V0X25hbWUoZG1hYnVmLCAoY29uc3QgY2hhciBfX3VzZXIgKilhcmcp
Owo+ID4KPiA+ICAgICAgICAgZGVmYXVsdDoKPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkv
bGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaAo+ID4gaW5kZXgg
ZGJjNzA5MmUwNGI1Li4yMWRmYWM4MTVkYzAgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkv
bGludXgvZG1hLWJ1Zi5oCj4gPiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCj4g
PiBAQCAtMzksNiArMzksMTAgQEAgc3RydWN0IGRtYV9idWZfc3luYyB7Cj4gPgo+ID4gICNkZWZp
bmUgRE1BX0JVRl9CQVNFICAgICAgICAgICAnYicKPiA+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExf
U1lOQyAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDAsIHN0cnVjdCBkbWFfYnVmX3N5bmMpCj4gPiAr
LyogMzIvNjRiaXRuZXNzIG9mIHRoaXMgdWFwaSB3YXMgYm90Y2hlZCBpbiBhbmRyb2lkLCB0aGVy
ZSdzIG5vIGRpZmZlcmVuY2UKPiA+ICsgKiBiZXR3ZWVuIHRoZW0gaW4gYWN0dWFsIHVhcGksIHRo
ZXkncmUganVzdCBkaWZmZXJlbnQgbnVtYmVycy4gKi8KPiA+ICAjZGVmaW5lIERNQV9CVUZfU0VU
X05BTUUgICAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIGNvbnN0IGNoYXIgKikKPiA+ICsjZGVm
aW5lIERNQV9CVUZfU0VUX05BTUVfQSAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIHUzMikKPiA+
ICsjZGVmaW5lIERNQV9CVUZfU0VUX05BTUVfQiAgICAgX0lPVyhETUFfQlVGX0JBU0UsIDEsIHU2
NCkKPiA+Cj4gPiAgI2VuZGlmCj4gPiAtLQo+ID4gMi4yNS4xCj4gPgo+IEJlc3QsCj4gU3VtaXQu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
