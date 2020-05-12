Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0396A1CECDD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 08:13:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C13261868
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 06:13:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1EBA56183D; Tue, 12 May 2020 06:13:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 296E861831;
	Tue, 12 May 2020 06:12:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 513A360628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 06:12:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4411E61831; Tue, 12 May 2020 06:12:25 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 6634460628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 06:12:23 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id i27so9582989ota.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 23:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rDVhfwcqSVyx9q5/p16CBADSN5ABq1zW6fY3UNoJRwE=;
 b=kImEhZsV+T+6PaCzMl3tRJuHh6b3hQ2jaa8WZCj9NLZDGitrET8suPkljJ9DNN1TG+
 P+QemtG0uWsbFrRDAbrXWO8jEofCT7y/fsOWl65Cgy0wQZ9A4cBkg7nHrM0Gqe/Rw4g9
 EGzWIt66lsdA0uKJtYE8oHfyQjaZWkj1qpYHcR2QXizDvr+TOHU8IrA/SUAZhHF16C3B
 l55pkBvj/bW1+leB+MsRQQSsgC3lBVuiCBHsRab2bgtIMYE9T3AAvZSbhx3SHO7X73eO
 km/OdtD7m5JDp738PcQPg9AhS3mVFBHlW2WkpD274kJLoK71nZmQJQh5/NQIctVKFZKE
 CevQ==
X-Gm-Message-State: AGi0PuZYeVBrJ/k9U1piHoAhzwIi/l0lEk4oBs+Baz8aP340Tc3JCUqA
 HIrhI/WSLMn2bNdwr+kkScGinF2zoDW5RO3HvrRS8g==
X-Google-Smtp-Source: APiQypJhNRGRhinzAhGDFhJNon3eFMcfMUO5uhBHXbuwUw5/kLPwp8toKCD2lNCnnnIIniHhPlp9X7sj/2mlYxXCY6k=
X-Received: by 2002:a05:6830:1d0:: with SMTP id
 r16mr14792604ota.303.1589263942718; 
 Mon, 11 May 2020 23:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-3-daniel.vetter@ffwll.ch>
 <CAFCwf10m14ModSuRbQAsWf5CSJvTeP7YRzcokD=o+m2Pa0TqKg@mail.gmail.com>
 <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
In-Reply-To: <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 12 May 2020 08:12:11 +0200
Message-ID: <CAKMK7uF=SzeEBtZ9xH+jPzeML4V0QQuwBnPVw+OL+MUgTaaLzQ@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Olof Johansson <olof@lixom.net>, Daniel Vetter <daniel.vetter@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 3/3] misc/habalabs: don't
	set default fence_ops->wait
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgNDoxNCBBTSBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAxMSBNYXkgMjAyMCBhdCAxOTozNywgT2RlZCBHYWJi
YXkgPG9kZWQuZ2FiYmF5QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBNYXkgMTEs
IDIwMjAgYXQgMTI6MTEgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IEl0J3MgdGhlIGRlZmF1bHQuCj4gPiBUaGFua3MgZm9yIGNhdGNo
aW5nIHRoYXQuCj4gPgo+ID4gPgo+ID4gPiBBbHNvIHNvIG11Y2ggZm9yICJ3ZSdyZSBub3QgZ29p
bmcgdG8gdGVsbCB0aGUgZ3JhcGhpY3MgcGVvcGxlIGhvdyB0bwo+ID4gPiByZXZpZXcgdGhlaXIg
Y29kZSIsIGRtYV9mZW5jZSBpcyBhIHByZXR0eSBjb3JlIHBpZWNlIG9mIGdwdSBkcml2ZXIKPiA+
ID4gaW5mcmFzdHJ1Y3R1cmUuIEFuZCBpdCdzIHZlcnkgbXVjaCB1YXBpIHJlbGV2YW50LCBpbmNs
dWRpbmcgcGlsZXMgb2YKPiA+ID4gY29ycmVzcG9uZGluZyB1c2Vyc3BhY2UgcHJvdG9jb2xzIGFu
ZCBsaWJyYXJpZXMgZm9yIGhvdyB0byBwYXNzIHRoZXNlCj4gPiA+IGFyb3VuZC4KPiA+ID4KPiA+
ID4gV291bGQgYmUgZ3JlYXQgaWYgaGFiYW5hbGFicyB3b3VsZCBub3QgdXNlIHRoaXMgKGZyb20g
YSBxdWljayBsb29rCj4gPiA+IGl0J3Mgbm90IG5lZWRlZCBhdCBhbGwpLCBzaW5jZSBvcGVuIHNv
dXJjZSB0aGUgdXNlcnNwYWNlIGFuZCBwbGF5aW5nCj4gPiA+IGJ5IHRoZSB1c3VhbCBydWxlcyBp
c24ndCBvbiB0aGUgdGFibGUuIElmIHRoYXQncyBub3QgcG9zc2libGUgKGJlY2F1c2UKPiA+ID4g
aXQncyBhY3R1YWxseSB1c2luZyB0aGUgdWFwaSBwYXJ0IG9mIGRtYV9mZW5jZSB0byBpbnRlcmFj
dCB3aXRoIGdwdQo+ID4gPiBkcml2ZXJzKSB0aGVuIHdlIGhhdmUgZXhhY3RseSB3aGF0IGV2ZXJ5
b25lIHByb21pc2VkIHdlJ2Qgd2FudCB0bwo+ID4gPiBhdm9pZC4KPiA+Cj4gPiBXZSBkb24ndCB1
c2UgdGhlIHVhcGkgcGFydHMsIHdlIGN1cnJlbnRseSBvbmx5IHVzaW5nIHRoZSBmZW5jaW5nIGFu
ZAo+ID4gc2lnbmFsaW5nIGFiaWxpdHkgb2YgdGhpcyBtb2R1bGUgaW5zaWRlIG91ciBrZXJuZWwg
Y29kZS4gQnV0IG1heWJlIEkKPiA+IGRpZG4ndCB1bmRlcnN0YW5kIHdoYXQgeW91IHJlcXVlc3Qu
IFlvdSB3YW50IHVzICpub3QqIHRvIHVzZSB0aGlzCj4gPiB3ZWxsLXdyaXR0ZW4gcGllY2Ugb2Yg
a2VybmVsIGNvZGUgYmVjYXVzZSBpdCBpcyBvbmx5IHVzZWQgYnkgZ3JhcGhpY3MKPiA+IGRyaXZl
cnMgPwo+ID4gSSdtIHNvcnJ5IGJ1dCBJIGRvbid0IGdldCB0aGlzIGFyZ3VtZW50LCBpZiB0aGlz
IGlzIGluZGVlZCB3aGF0IHlvdSBtZWFudC4KPgo+IFdlIHdvdWxkIHJhdGhlciBkcml2ZXJzIHVz
aW5nIGEgZmVhdHVyZSB0aGF0IGhhcyByZXF1aXJlbWVudHMgb24KPiBjb3JyZWN0IHVzZXJzcGFj
ZSBpbXBsZW1lbnRhdGlvbnMgb2YgdGhlIGZlYXR1cmUgaGF2ZSBhIHVzZXJzcGFjZSB0aGF0Cj4g
aXMgb3BlbiBzb3VyY2UgYW5kIGF1ZGl0YWJsZS4KPgo+IEZlbmNpbmcgaXMgdHJpY2t5LCBjcm9z
cy1kZXZpY2UgZmVuY2luZyBpcyByZWFsbHkgdHJpY2t5LCBhbmQgaGF2aW5nCj4gdGhlIGFiaWxp
dHkgZm9yIGEgY2xvc2VkIHVzZXJzcGFjZSBjb21wb25lbnQgdG8gbWVzcyB1cCBvdGhlciBwZW9w
bGUncwo+IGRyaXZlcnMsIHRoaW5rIGk5MTUgc2hhcmVkIHdpdGggY2xvc2VkIGhhYmFuYSB1c2Vy
c3BhY2UgYW5kIHNoYXJlZAo+IGZlbmNlcywgZGVjcmVhc2VzIGFiaWxpdHkgdG8gZGVidWcgdGhp
bmdzLgo+Cj4gSWRlYWxseSB3ZSB3b3VsZG4ndCBvZmZlciB1c2VycyBrbm93biB1bnRlc3RlZC9i
cm9rZW4gc2NlbmFyaW9zLCBzbwo+IHllcyB3ZSdkIHByZWZlciB0aGF0IGRyaXZlcnMgdGhhdCBp
bnRlbmQgdG8gZXhwb3NlIGEgdXNlcnNwYWNlIGZlbmNpbmcKPiBhcGkgYXJvdW5kIGRtYS1mZW5j
ZSB3b3VsZCBhZGhlcmUgdG8gdGhlIHJ1bGVzIG9mIHRoZSBncHUgZHJpdmVycy4KPgo+IEknbSBu
b3Qgc2F5IHlvdSBoYXZlIHRvIGRyb3AgdXNpbmcgZG1hLWZlbmNlLCBidXQgaWYgeW91IG1vdmUg
dG93YXJkcwo+IGNyb3NzLWRldmljZSBzdHVmZiBJIGJlbGlldmUgb3RoZXIgZHJpdmVycyB3b3Vs
ZCBiZSBjb3JyZWN0IGluCj4gcmVmdXNpbmcgdG8gaW50ZXJhY3Qgd2l0aCBmZW5jZXMgZnJvbSBo
ZXJlLgoKVGhlIGZsaXAgc2lkZSBpcyBpZiB5b3Ugb25seSB1c2VkIGRtYS1mZW5jZS5jICJiZWNh
dXNlIGl0J3MgdGhlcmUiLAphbmQgbm90IGJlY2F1c2UgaXQgY29tZXMgd2l0aCBhbiB1YXBpIGF0
dGFjaGVkIGFuZCBhIGNyb3NzLWRyaXZlcgprZXJuZWwgaW50ZXJuYWwgY29udHJhY3QgZm9yIGhv
dyB0byBpbnRlcmFjdCB3aXRoIGdwdSBkcml2ZXJzLCB0aGVuCnRoZXJlJ3MgcmVhbGx5IG5vdCBt
dWNoIHBvaW50IGluIHVzaW5nIGl0LiBJdCdzIGEgY3VzdG9tLXJvbGxlZAp3YWl0X3F1ZXVlL2V2
ZW50IHRoaW5nLCB0aGF0J3MgYWxsLiBXaXRob3V0IHRoZSBncHUgdWFwaSBhbmQgZ3B1CmNyb3Nz
LWRyaXZlciBjb250cmFjdCBpdCB3b3VsZCBiZSBtdWNoIGNsZWFuZXIgdG8ganVzdCB1c2Ugd2Fp
dF9xdWV1ZQpkaXJlY3RseSwgYW5kIHRoYXQncyBhIGNvbnN0cnVjdCBhbGwga2VybmVsIGRldmVs
b3BlcnMgdW5kZXJzdGFuZCwgbm90Cmp1c3QgZ3B1IGZvbGtzLiBGcm9tIGEgcXVpY2sgbG9vayBh
dCBsZWFzdCBoYWJhbmFsYWJzIGRvZXNuJ3QgdXNlIGFueQpvZiB0aGVzZSB1YXBpL2Nyb3NzLWRy
aXZlci9ncHUgYml0cy4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
