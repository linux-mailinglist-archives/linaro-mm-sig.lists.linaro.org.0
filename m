Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EF1201AF7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 21:12:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5DC9665A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 19:12:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D72CB665A5; Fri, 19 Jun 2020 19:12:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F6D8665B6;
	Fri, 19 Jun 2020 19:11:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60DED665A1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:11:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 560DD665B6; Fri, 19 Jun 2020 19:11:26 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id CFE81665A5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:11:24 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id r9so9398694wmh.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 12:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=chbWz7xzFy579TbWBa7IgoDaVrcNNu3e+ZV8C+3+5ts=;
 b=O+Y/iK9TtgdF59p/CEvJWiFZo4ClpSACONBo6AHx1mtUqX8+vL1/kc2oXEhLhGvJhi
 MOYyT+uAyyG2eOsm0Q0ofEU65st24nWInmJ/abO2HbMIRSbxvPRzOyxWj2XMjQIm0UOr
 5BT0ZgI+dPlcs5kbPUq7SwbdlcuBHucNFiB5myCsXlAahPey77QjI+D6L10oNvnc+OHs
 CO2Myo/L9wZUfMbrbncFtCJ3MOkUYgc5tUAYUz+zryHXTb3xDKwesst8erkvSHs3pgJk
 z93L13EdrsSKA5tHKa+tIUPg9xwNL9v/XrpCMswlD7TIGdFRwGT+5cVWvNrSbnWunxon
 2fJA==
X-Gm-Message-State: AOAM532p0UHu8Duc95beUpvSGJNcHWZ8S3leEt9wrbWKQVIozeIzutKT
 9HF94thSINHtWqwzGvzWrUjBg9cXXm+kiCPaDLA=
X-Google-Smtp-Source: ABdhPJwcHFy0tih4Jg9lH/i7Ldu0yNdrmwrIvxAKTo0TP4xm3PszQ+8aXnDybDwn0lmkl3Yy4KGqnVo3R2CnXN9sXgU=
X-Received: by 2002:a7b:cd96:: with SMTP id y22mr5280023wmj.56.1592593883868; 
 Fri, 19 Jun 2020 12:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca> <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca> <20200619180935.GA10009@redhat.com>
In-Reply-To: <20200619180935.GA10009@redhat.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 19 Jun 2020 15:11:12 -0400
Message-ID: <CADnq5_Pw_85Kzh1of=MbDi4g9POeF3jO4AJ7p2FjY5XZW0=vsQ@mail.gmail.com>
To: Jerome Glisse <jglisse@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
	annotations
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMjowOSBQTSBKZXJvbWUgR2xpc3NlIDxqZ2xpc3NlQHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDI6MjM6MDhQTSAt
MDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQg
MDY6MTk6NDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+Cj4gPiA+IFRoZSBtYWRu
ZXNzIGlzIG9ubHkgdGhhdCBkZXZpY2UgQidzIG1tdSBub3RpZmllciBtaWdodCBuZWVkIHRvIHdh
aXQKPiA+ID4gZm9yIGZlbmNlX0Igc28gdGhhdCB0aGUgZG1hIG9wZXJhdGlvbiBmaW5pc2hlcy4g
V2hpY2ggaW4gdHVybiBoYXMgdG8KPiA+ID4gd2FpdCBmb3IgZGV2aWNlIEEgdG8gZmluaXNoIGZp
cnN0Lgo+ID4KPiA+IFNvLCBpdCBzb3VuZCwgZnVuZGFtZW50YWxseSB5b3UndmUgZ290IHRoaXMg
Z3JhcGggb2Ygb3BlcmF0aW9ucyBhY3Jvc3MKPiA+IGFuIHVua25vd24gc2V0IG9mIGRyaXZlcnMg
YW5kIHRoZSBrZXJuZWwgY2Fubm90IGluc2VydCBpdHNlbGYgaW4KPiA+IGRtYV9mZW5jZSBoYW5k
IG9mZnMgdG8gcmUtdmFsaWRhdGUgYW55IG9mIHRoZSBidWZmZXJzIGludm9sdmVkPwo+ID4gQnVm
ZmVycyB3aGljaCBieSBkZWZpbml0aW9uIGNhbm5vdCBiZSB0b3VjaGVkIGJ5IHRoZSBoYXJkd2Fy
ZSB5ZXQuCj4gPgo+ID4gVGhhdCByZWFsbHkgaXMgYSBwcmV0dHkgaG9ycmlibGUgcGxhY2UgdG8g
ZW5kIHVwLi4KPiA+Cj4gPiBQaW5uaW5nIHJlYWxseSBpcyByaWdodCBhbnN3ZXIgZm9yIHRoaXMg
a2luZCBvZiB3b3JrIGZsb3cuIEkgdGhpbmsKPiA+IGNvbnZlcnRpbmcgcGlubmluZyB0byBub3Rp
ZmVycyBzaG91bGQgbm90IGJlIGRvbmUgdW5sZXNzIG5vdGlmaWVyCj4gPiBpbnZhbGlkYXRpb24g
aXMgcmVsYXRpdmVseSBib3VuZGVkLgo+ID4KPiA+IEkga25vdyBwZW9wbGUgbGlrZSBub3RpZmll
cnMgYmVjYXVzZSB0aGV5IGdpdmUgYSBiaXQgbmljZXIgcGVyZm9ybWFuY2UKPiA+IGluIHNvbWUg
aGFwcHkgY2FzZXMsIGJ1dCB0aGlzIGNyaXBwbGVzIGFsbCB0aGUgYmFkIGNhc2VzLi4KPiA+Cj4g
PiBJZiBwaW5uaW5nIGRvZXNuJ3Qgd29yayBmb3Igc29tZSByZWFzb24gbWF5YmUgd2Ugc2hvdWxk
IGFkZHJlc3MgdGhhdD8KPgo+IE5vdGUgdGhhdCB0aGUgZG1hIGZlbmNlIGlzIG9ubHkgdHJ1ZSBm
b3IgdXNlciBwdHIgYnVmZmVyIHdoaWNoIHByZWRhdGUKPiBhbnkgSE1NIHdvcmsgYW5kIHRodXMg
d2VyZSB1c2luZyBtbXUgbm90aWZpZXIgYWxyZWFkeS4gWW91IG5lZWQgdGhlCj4gbW11IG5vdGlm
aWVyIHRoZXJlIGJlY2F1c2Ugb2YgZm9yayBhbmQgb3RoZXIgY29ybmVyIGNhc2VzLgo+Cj4gRm9y
IG5vdXZlYXUgdGhlIG5vdGlmaWVyIGRvIG5vdCBuZWVkIHRvIHdhaXQgZm9yIGFueXRoaW5nIGl0
IGNhbiB1cGRhdGUKPiB0aGUgR1BVIHBhZ2UgdGFibGUgcmlnaHQgYXdheS4gTW9kdWxvIG5lZWRp
bmcgdG8gd3JpdGUgdG8gR1BVIG1lbW9yeQo+IHVzaW5nIGRtYSBlbmdpbmUgaWYgdGhlIEdQVSBw
YWdlIHRhYmxlIGlzIGluIEdQVSBtZW1vcnkgdGhhdCBpcyBub3QKPiBhY2Nlc3NpYmxlIGZyb20g
dGhlIENQVSBidXQgdGhhdCdzIG5ldmVyIHRoZSBjYXNlIGZvciBub3V2ZWF1IHNvIGZhcgo+IChi
dXQgaSBleHBlY3QgaXQgd2lsbCBiZSBhdCBvbmUgcG9pbnQpLgo+Cj4KPiBTbyBpIHNlZSB0aGlz
IGFzIDIgZGlmZmVyZW50IGNhc2VzLCB0aGUgdXNlciBwdHIgY2FzZSwgd2hpY2ggZG9lcyBwaW4K
PiBwYWdlcyBieSB0aGUgd2F5LCB3aGVyZSB0aGluZ3MgYXJlIHN5bmNocm9ub3VzLiBWZXJzdXMg
dGhlIEhNTSBjYXNlcwo+IHdoZXJlIGV2ZXJ5dGhpbmcgaXMgYXN5bmNocm9ub3VzLgo+Cj4KPiBJ
IHByb2JhYmx5IG5lZWQgdG8gd2FybiBBTUQgZm9sa3MgYWdhaW4gdGhhdCB1c2luZyBITU0gbWVh
bnMgdGhhdCB5b3UKPiBtdXN0IGJlIGFibGUgdG8gdXBkYXRlIHRoZSBHUFUgcGFnZSB0YWJsZSBh
c3luY2hyb25vdXNseSB3aXRob3V0Cj4gZmVuY2Ugd2FpdC4gVGhlIGlzc3VlIGZvciBBTUQgaXMg
dGhhdCB0aGV5IGFscmVhZHkgdXBkYXRlIHRoZWlyIEdQVQo+IHBhZ2UgdGFibGUgdXNpbmcgRE1B
IGVuZ2luZS4gSSBiZWxpZXZlIHRoaXMgaXMgc3RpbGwgZG9hYmxlIGlmIHRoZXkKPiB1c2UgYSBr
ZXJuZWwgb25seSBETUEgZW5naW5lIGNvbnRleHQsIHdoZXJlIG9ubHkga2VybmVsIGNhbiBxdWV1
ZSB1cAo+IGpvYnMgc28gdGhhdCB5b3UgZG8gbm90IG5lZWQgdG8gd2FpdCBmb3IgdW5yZWxhdGVk
IHRoaW5ncyBhbmQgeW91IGNhbgo+IHByaW9yaXRpemUgR1BVIHBhZ2UgdGFibGUgdXBkYXRlIHdo
aWNoIHNob3VsZCB0cmFuc2xhdGUgaW4gZmFzdCBHUFUKPiBwYWdlIHRhYmxlIHVwZGF0ZSB3aXRo
b3V0IERNQSBmZW5jZS4KCkFsbCBkZXZpY2VzIHdoaWNoIHN1cHBvcnQgcmVjb3ZlcmFibGUgcGFn
ZSBmYXVsdHMgYWxzbyBoYXZlIGEKZGVkaWNhdGVkIHBhZ2luZyBlbmdpbmUgZm9yIHRoZSBrZXJu
ZWwgZHJpdmVyIHdoaWNoIHRoZSBkcml2ZXIgYWxyZWFkeQptYWtlcyB1c2Ugb2YuICBXZSBjYW4g
YWxzbyB1cGRhdGUgdGhlIEdQVSBwYWdlIHRhYmxlcyB3aXRoIHRoZSBDUFUuCgpBbGV4Cgo+Cj4K
PiA+ID4gRnVsbCBkaXNjbG9zdXJlOiBXZSBhcmUgYXdhcmUgdGhhdCB3ZSd2ZSBkZXNpZ25lZCBv
dXJzZWx2ZXMgaW50byBhbgo+ID4gPiBpbXByZXNzaXZlIGNvcm5lciBoZXJlLCBhbmQgdGhlcmUn
cyBsb3RzIG9mIHRhbGtzIGdvaW5nIG9uIGFib3V0Cj4gPiA+IHVudGFuZ2xpbmcgdGhlIGRtYSBz
eW5jaHJvbml6YXRpb24gZnJvbSB0aGUgbWVtb3J5IG1hbmFnZW1lbnQKPiA+ID4gY29tcGxldGVs
eS4gQnV0Cj4gPgo+ID4gSSB0aGluayB0aGUgZG9jdW1lbnRpbmcgaXMgcmVhbGx5IGltcG9ydGFu
dDogb25seSBHUFUgc2hvdWxkIGJlIHVzaW5nCj4gPiB0aGlzIHN0dWZmIGFuZCBkcml2aW5nIG5v
dGlmaWVycyB0aGlzIHdheS4gQ29tcGxldGUgTk8gZm9yIGFueQo+ID4gdG90YWxseS1ub3QtYS1H
UFUgdGhpbmdzIGluIGRyaXZlcnMvYWNjZWwgZm9yIHN1cmUuCj4KPiBZZXMgZm9yIHVzZXIgdGhh
dCBleHBlY3QgSE1NIHRoZXkgbmVlZCB0byBiZSBhc3luY2hyb25vdXMuIEJ1dCBpdCBpcwo+IGhh
cmQgdG8gcmV2ZXJ0IHVzZXIgcHRyIGhhcyBpdCB3YXMgZG9uZSBhIGxvbmcgdGltZSBhZ28uCj4K
PiBDaGVlcnMsCj4gSsOpcsO0bWUKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vYW1kLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
