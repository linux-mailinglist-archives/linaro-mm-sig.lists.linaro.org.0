Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 055841DBC44
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2020 20:05:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2471865F8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2020 18:05:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11AE465F85; Wed, 20 May 2020 18:05:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE89065F81;
	Wed, 20 May 2020 18:05:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D9F7B60CB2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 18:05:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CE8B365F81; Wed, 20 May 2020 18:05:01 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 34F9860CB2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 18:05:00 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id v12so4056209wrp.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2020 11:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=7VLWQjSGehoQQ10TIMLPZjQP7xmwIhJsBUGDoa1VrTI=;
 b=roB+XZJL483PDFgZFIPa1O/K5PjH44Wnu4duquaAb/F11IBG6ihMLldAZwRAtSveiY
 Lh4GSr+B7QTgd8OFmn4uvVs0BDlKRxRbhQWLtvhf8+HF8wWq5v89cbuBRO/kQNyLiDsJ
 j+bYFSkJBzM4HqWb9lwSykqMP/IfMZraEsIWKwkLdglxQcnPWVOi1TppYmAualUpMaLY
 Je0M6FfzCjwI2zuCH2G+v24a9bw0c+NOlvf/BuJASdr09AzmG4tJYaLZ/FaXJaD8MJpW
 VK8cSCjaJoGwJcOllhX4bfQaWljDWbCBnHlXGNZHstz1w1JJQcYG00mNruoBPGj1UkN8
 U1Dg==
X-Gm-Message-State: AOAM532/EWCTKVHjvpnh3AqDz9aA+Bol9L5PQuP/N6eFVWNFD8J/CDHL
 8/2+rzDIeFqudrkUjvzF2vi6Bg==
X-Google-Smtp-Source: ABdhPJyS/wpov4LAbGyHkjwZQ9PTa7H2uWj92iFIX5HPBrejAjzuIvVfeVBaSJI7TyMuvzzPHXcGHg==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr5634315wrn.149.1589997899278; 
 Wed, 20 May 2020 11:04:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b12sm4040708wmj.0.2020.05.20.11.04.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 11:04:58 -0700 (PDT)
Date: Wed, 20 May 2020 20:04:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20200520180456.GC206103@phenom.ffwll.local>
Mail-Followup-To: Oded Gabbay <oded.gabbay@gmail.com>,
 Dave Airlie <airlied@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Olof Johansson <olof@lixom.net>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-3-daniel.vetter@ffwll.ch>
 <CAFCwf10m14ModSuRbQAsWf5CSJvTeP7YRzcokD=o+m2Pa0TqKg@mail.gmail.com>
 <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
 <CAKMK7uF=SzeEBtZ9xH+jPzeML4V0QQuwBnPVw+OL+MUgTaaLzQ@mail.gmail.com>
 <CAFCwf110j5EDNH9nvrVX9fQ5JkEt5B217snyiTyfpFz8yAkxNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf110j5EDNH9nvrVX9fQ5JkEt5B217snyiTyfpFz8yAkxNg@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDI6Mzg6MzhQTSArMDMwMCwgT2RlZCBHYWJiYXkgd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgOToxMiBBTSBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE1heSAxMiwgMjAyMCBh
dCA0OjE0IEFNIERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IE9uIE1vbiwgMTEgTWF5IDIwMjAgYXQgMTk6MzcsIE9kZWQgR2FiYmF5IDxvZGVkLmdhYmJh
eUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gTW9uLCBNYXkgMTEsIDIwMjAg
YXQgMTI6MTEgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSXQncyB0aGUgZGVmYXVsdC4KPiA+ID4gPiBUaGFua3MgZm9y
IGNhdGNoaW5nIHRoYXQuCj4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbHNvIHNvIG11Y2gg
Zm9yICJ3ZSdyZSBub3QgZ29pbmcgdG8gdGVsbCB0aGUgZ3JhcGhpY3MgcGVvcGxlIGhvdyB0bwo+
ID4gPiA+ID4gcmV2aWV3IHRoZWlyIGNvZGUiLCBkbWFfZmVuY2UgaXMgYSBwcmV0dHkgY29yZSBw
aWVjZSBvZiBncHUgZHJpdmVyCj4gPiA+ID4gPiBpbmZyYXN0cnVjdHVyZS4gQW5kIGl0J3MgdmVy
eSBtdWNoIHVhcGkgcmVsZXZhbnQsIGluY2x1ZGluZyBwaWxlcyBvZgo+ID4gPiA+ID4gY29ycmVz
cG9uZGluZyB1c2Vyc3BhY2UgcHJvdG9jb2xzIGFuZCBsaWJyYXJpZXMgZm9yIGhvdyB0byBwYXNz
IHRoZXNlCj4gPiA+ID4gPiBhcm91bmQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gV291bGQgYmUgZ3Jl
YXQgaWYgaGFiYW5hbGFicyB3b3VsZCBub3QgdXNlIHRoaXMgKGZyb20gYSBxdWljayBsb29rCj4g
PiA+ID4gPiBpdCdzIG5vdCBuZWVkZWQgYXQgYWxsKSwgc2luY2Ugb3BlbiBzb3VyY2UgdGhlIHVz
ZXJzcGFjZSBhbmQgcGxheWluZwo+ID4gPiA+ID4gYnkgdGhlIHVzdWFsIHJ1bGVzIGlzbid0IG9u
IHRoZSB0YWJsZS4gSWYgdGhhdCdzIG5vdCBwb3NzaWJsZSAoYmVjYXVzZQo+ID4gPiA+ID4gaXQn
cyBhY3R1YWxseSB1c2luZyB0aGUgdWFwaSBwYXJ0IG9mIGRtYV9mZW5jZSB0byBpbnRlcmFjdCB3
aXRoIGdwdQo+ID4gPiA+ID4gZHJpdmVycykgdGhlbiB3ZSBoYXZlIGV4YWN0bHkgd2hhdCBldmVy
eW9uZSBwcm9taXNlZCB3ZSdkIHdhbnQgdG8KPiA+ID4gPiA+IGF2b2lkLgo+ID4gPiA+Cj4gPiA+
ID4gV2UgZG9uJ3QgdXNlIHRoZSB1YXBpIHBhcnRzLCB3ZSBjdXJyZW50bHkgb25seSB1c2luZyB0
aGUgZmVuY2luZyBhbmQKPiA+ID4gPiBzaWduYWxpbmcgYWJpbGl0eSBvZiB0aGlzIG1vZHVsZSBp
bnNpZGUgb3VyIGtlcm5lbCBjb2RlLiBCdXQgbWF5YmUgSQo+ID4gPiA+IGRpZG4ndCB1bmRlcnN0
YW5kIHdoYXQgeW91IHJlcXVlc3QuIFlvdSB3YW50IHVzICpub3QqIHRvIHVzZSB0aGlzCj4gPiA+
ID4gd2VsbC13cml0dGVuIHBpZWNlIG9mIGtlcm5lbCBjb2RlIGJlY2F1c2UgaXQgaXMgb25seSB1
c2VkIGJ5IGdyYXBoaWNzCj4gPiA+ID4gZHJpdmVycyA/Cj4gPiA+ID4gSSdtIHNvcnJ5IGJ1dCBJ
IGRvbid0IGdldCB0aGlzIGFyZ3VtZW50LCBpZiB0aGlzIGlzIGluZGVlZCB3aGF0IHlvdSBtZWFu
dC4KPiA+ID4KPiA+ID4gV2Ugd291bGQgcmF0aGVyIGRyaXZlcnMgdXNpbmcgYSBmZWF0dXJlIHRo
YXQgaGFzIHJlcXVpcmVtZW50cyBvbgo+ID4gPiBjb3JyZWN0IHVzZXJzcGFjZSBpbXBsZW1lbnRh
dGlvbnMgb2YgdGhlIGZlYXR1cmUgaGF2ZSBhIHVzZXJzcGFjZSB0aGF0Cj4gPiA+IGlzIG9wZW4g
c291cmNlIGFuZCBhdWRpdGFibGUuCj4gPiA+Cj4gPiA+IEZlbmNpbmcgaXMgdHJpY2t5LCBjcm9z
cy1kZXZpY2UgZmVuY2luZyBpcyByZWFsbHkgdHJpY2t5LCBhbmQgaGF2aW5nCj4gPiA+IHRoZSBh
YmlsaXR5IGZvciBhIGNsb3NlZCB1c2Vyc3BhY2UgY29tcG9uZW50IHRvIG1lc3MgdXAgb3RoZXIg
cGVvcGxlJ3MKPiA+ID4gZHJpdmVycywgdGhpbmsgaTkxNSBzaGFyZWQgd2l0aCBjbG9zZWQgaGFi
YW5hIHVzZXJzcGFjZSBhbmQgc2hhcmVkCj4gPiA+IGZlbmNlcywgZGVjcmVhc2VzIGFiaWxpdHkg
dG8gZGVidWcgdGhpbmdzLgo+ID4gPgo+ID4gPiBJZGVhbGx5IHdlIHdvdWxkbid0IG9mZmVyIHVz
ZXJzIGtub3duIHVudGVzdGVkL2Jyb2tlbiBzY2VuYXJpb3MsIHNvCj4gPiA+IHllcyB3ZSdkIHBy
ZWZlciB0aGF0IGRyaXZlcnMgdGhhdCBpbnRlbmQgdG8gZXhwb3NlIGEgdXNlcnNwYWNlIGZlbmNp
bmcKPiA+ID4gYXBpIGFyb3VuZCBkbWEtZmVuY2Ugd291bGQgYWRoZXJlIHRvIHRoZSBydWxlcyBv
ZiB0aGUgZ3B1IGRyaXZlcnMuCj4gPiA+Cj4gPiA+IEknbSBub3Qgc2F5IHlvdSBoYXZlIHRvIGRy
b3AgdXNpbmcgZG1hLWZlbmNlLCBidXQgaWYgeW91IG1vdmUgdG93YXJkcwo+ID4gPiBjcm9zcy1k
ZXZpY2Ugc3R1ZmYgSSBiZWxpZXZlIG90aGVyIGRyaXZlcnMgd291bGQgYmUgY29ycmVjdCBpbgo+
ID4gPiByZWZ1c2luZyB0byBpbnRlcmFjdCB3aXRoIGZlbmNlcyBmcm9tIGhlcmUuCj4gPgo+ID4g
VGhlIGZsaXAgc2lkZSBpcyBpZiB5b3Ugb25seSB1c2VkIGRtYS1mZW5jZS5jICJiZWNhdXNlIGl0
J3MgdGhlcmUiLAo+ID4gYW5kIG5vdCBiZWNhdXNlIGl0IGNvbWVzIHdpdGggYW4gdWFwaSBhdHRh
Y2hlZCBhbmQgYSBjcm9zcy1kcml2ZXIKPiA+IGtlcm5lbCBpbnRlcm5hbCBjb250cmFjdCBmb3Ig
aG93IHRvIGludGVyYWN0IHdpdGggZ3B1IGRyaXZlcnMsIHRoZW4KPiA+IHRoZXJlJ3MgcmVhbGx5
IG5vdCBtdWNoIHBvaW50IGluIHVzaW5nIGl0LiBJdCdzIGEgY3VzdG9tLXJvbGxlZAo+ID4gd2Fp
dF9xdWV1ZS9ldmVudCB0aGluZywgdGhhdCdzIGFsbC4gV2l0aG91dCB0aGUgZ3B1IHVhcGkgYW5k
IGdwdQo+ID4gY3Jvc3MtZHJpdmVyIGNvbnRyYWN0IGl0IHdvdWxkIGJlIG11Y2ggY2xlYW5lciB0
byBqdXN0IHVzZSB3YWl0X3F1ZXVlCj4gPiBkaXJlY3RseSwgYW5kIHRoYXQncyBhIGNvbnN0cnVj
dCBhbGwga2VybmVsIGRldmVsb3BlcnMgdW5kZXJzdGFuZCwgbm90Cj4gPiBqdXN0IGdwdSBmb2xr
cy4gRnJvbSBhIHF1aWNrIGxvb2sgYXQgbGVhc3QgaGFiYW5hbGFicyBkb2Vzbid0IHVzZSBhbnkK
PiA+IG9mIHRoZXNlIHVhcGkvY3Jvc3MtZHJpdmVyL2dwdSBiaXRzLgo+ID4gLURhbmllbAo+IAo+
IEhpIERhbmllbCwKPiBJIHdhbnQgdG8gc2F5IGV4cGxpY2l0bHkgdGhhdCB3ZSBkb24ndCB1c2Ug
dGhlIGRtYS1idWYgdWFwaSBwYXJ0cywgbm9yCj4gd2UgaW50ZW5kIHRvIHVzZSB0aGVtIHRvIGNv
bW11bmljYXRlIHdpdGggYW55IEdQVSBkZXZpY2UuIFdlIG9ubHkgdXNlCj4gaXQgYXMgc2ltcGxl
IGNvbXBsZXRpb24gbWVjaGFuaXNtIGFzIGl0IHdhcyBjb252ZW5pZW50IHRvIHVzZS4KPiBJIGRv
IHVuZGVyc3RhbmQgSSBjYW4gZXhjaGFuZ2UgdGhhdCBtZWNoYW5pc20gd2l0aCBhIHNpbXBsZXIg
b25lLCBhbmQKPiBJIHdpbGwgYWRkIGFuIGludGVybmFsIHRhc2sgdG8gZG8gaXQgKGFsYmVpdCBu
b3QgaW4gYSB2ZXJ5IGhpZ2gKPiBwcmlvcml0eSkgYW5kIHVwc3RyZWFtIGl0LCBpdHMganVzdCB0
aGF0IGl0IGlzIHBhcnQgb2Ygb3VyIGRhdGEgcGF0aAo+IHNvIHdlIG5lZWQgdG8gdGhvcm91Z2hs
eSB2YWxpZGF0ZSBpdCBmaXJzdC4KClNvdW5kcyBnb29kLgoKV3J0IG1lcmdpbmcgdGhpcyBwYXRj
aCBoZXJlLCBjYW4geW91IGluY2x1ZGUgdGhhdCBpbiBvbmUgb2YgeW91ciBuZXh0CnB1bGxzPyBP
ciBzaG91bGQgSSB0b3NzIGl0IGVudGlyZWx5LCB3YWl0aW5nIGZvciB5b3UgdG8gcmVtb3ZlIGRt
YV9mZW5jZQpvdXRyaWdodD8KClRoYW5rcywgRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3
YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
