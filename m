Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3427C1AE054
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2020 17:01:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5557E6624C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2020 15:01:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 480EB6621A; Fri, 17 Apr 2020 15:01:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FCC266098;
	Fri, 17 Apr 2020 15:00:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 68AE766078
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2020 15:00:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4F86C66098; Fri, 17 Apr 2020 15:00:19 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id DAD0266078
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2020 15:00:17 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a25so3442709wrd.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2020 08:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=+pLzXV2uoWONcvIXLG60QmJnpF6qpxalQJEJVAlU5ZU=;
 b=er6R9JMNdyonNQqyo99N+R4jtLR9kZHl5qY+aSMULs2k0O9WvQu3L2mBc6/zC5oi86
 +/NnF0Ir5t0fAV1VbQnbHmriDuYP506BD4IhDXDen3PnEZrtUPzqxPwFQ+zwBecEu2Vv
 NVpPz/lMSBl/8f+cWDIvTu/bTvFVFl5L0sJftcw53JHqFJ0YDbrl5KLI6QSND61xE122
 x+AefWk+UGA4Ir7vnMFwKqAalQLT6dyOU3hRMwVS5U5zRDx8I+95Zr5Wv1C0+LgIorvP
 i9pzo7DP8ihrbcGpr0lFofnwrDzn8/VSifxpaoiM9RQ24WmIw7ESH2OsE9UF3Goq2oXa
 NZxw==
X-Gm-Message-State: AGi0PuYi8Aj6OvoN0w2w1snqFzpgEVs2Y8gi2L6Oyt0vcjULcux/V3NB
 G9O4lMDB6QAwaO8MzevK4XWuJw==
X-Google-Smtp-Source: APiQypI+XqYbgKYVQ6aVc9PEFMJyQDjicsm1whYiSRv3ZukR4N/x6YDtB22FRHpXAK0g1o+ga1mJiw==
X-Received: by 2002:adf:f8cd:: with SMTP id f13mr4216226wrq.119.1587135616818; 
 Fri, 17 Apr 2020 08:00:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g186sm8077661wme.7.2020.04.17.08.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 08:00:16 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:00:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20200417150013.GN3456981@phenom.ffwll.local>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Anders Pedersen <anders.pedersen@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart (VMware)" <dvhart@infradead.org>,
 =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>,
 Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416102508.GA820251@kroah.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, nd <nd@arm.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
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

T24gVGh1LCBBcHIgMTYsIDIwMjAgYXQgMTI6MjU6MDhQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IE9uIFR1ZSwgQXByIDE0LCAyMDIwIGF0IDA5OjQxOjMxUE0gLTA3MDAsIEpv
aG4gU3R1bHR6IHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgNzoyOCBBTSBHcmVn
IEtyb2FoLUhhcnRtYW4KPiA+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIFR1ZSwgQXByIDE0LCAyMDIwIGF0IDA0OjE4OjQ3UE0gKzAyMDAsIMOYcmph
biBFaWRlIHdyb3RlOgo+ID4gPiA+IE9ubHkgc3luYyB0aGUgc2ctbGlzdCBvZiBhbiBJb24gZG1h
LWJ1ZiBhdHRhY2htZW50IHdoZW4gdGhlIGF0dGFjaG1lbnQKPiA+ID4gPiBpcyBhY3R1YWxseSBt
YXBwZWQgb24gdGhlIGRldmljZS4KPiA+ID4gPgo+ID4gPiA+IGRtYS1idWZzIG1heSBiZSBzeW5j
ZWQgYXQgYW55IHRpbWUuIEl0IGNhbiBiZSByZWFjaGVkIGZyb20gdXNlciBzcGFjZQo+ID4gPiA+
IHZpYSBETUFfQlVGX0lPQ1RMX1NZTkMsIHNvIHRoZXJlIGFyZSBubyBndWFyYW50ZWVzIGZyb20g
Y2FsbGVycyBvbiB3aGVuCj4gPiA+ID4gc3luY3MgbWF5IGJlIGF0dGVtcHRlZCwgYW5kIGRtYV9i
dWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQKPiA+ID4gPiBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Mo
KSBtYXkgbm90IGJlIHBhaXJlZC4KPiA+ID4gPgo+ID4gPiA+IFNpbmNlIHRoZSBzZ19saXN0J3Mg
ZG1hX2FkZHJlc3MgaXNuJ3Qgc2V0IHVwIHVudGlsIHRoZSBidWZmZXIgaXMgdXNlZAo+ID4gPiA+
IG9uIHRoZSBkZXZpY2UsIGFuZCBkbWFfbWFwX3NnKCkgaXMgY2FsbGVkIG9uIGl0LCB0aGUgZG1h
X2FkZHJlc3Mgd2lsbCBiZQo+ID4gPiA+IE5VTEwgaWYgc3luYyBpcyBhdHRlbXB0ZWQgb24gdGhl
IGRtYS1idWYgYmVmb3JlIGl0J3MgbWFwcGVkIG9uIGEgZGV2aWNlLgo+ID4gPiA+Cj4gPiA+ID4g
QmVmb3JlIHY1LjAgKGNvbW1pdCA1NTg5N2FmNjMwOTEgKCJkbWEtZGlyZWN0OiBtZXJnZSBzd2lv
dGxiX2RtYV9vcHMKPiA+ID4gPiBpbnRvIHRoZSBkbWFfZGlyZWN0IGNvZGUiKSkgdGhpcyB3YXMg
YSBwcm9ibGVtIGFzIHRoZSBkbWEtYXBpIChhdCBsZWFzdAo+ID4gPiA+IHRoZSBzd2lvdGxiX2Rt
YV9vcHMgb24gYXJtNjQpIHdvdWxkIHVzZSB0aGUgcG90ZW50aWFsbHkgaW52YWxpZAo+ID4gPiA+
IGRtYV9hZGRyZXNzLiBIb3cgdGhhdCBmYWlsZWQgZGVwZW5kZWQgb24gaG93IHRoZSBkZXZpY2Ug
aGFuZGxlZCBwaHlzaWNhbAo+ID4gPiA+IGFkZHJlc3MgMC4gSWYgMCB3YXMgYSB2YWxpZCBhZGRy
ZXNzIHRvIHBoeXNpY2FsIHJhbSwgdGhhdCBwYWdlIHdvdWxkIGdldAo+ID4gPiA+IGZsdXNoZWQg
YSBsb3QsIHdoaWxlIHRoZSBhY3R1YWwgcGFnZXMgaW4gdGhlIGJ1ZmZlciB3b3VsZCBub3QgZ2V0
IHN5bmNlZAo+ID4gPiA+IGNvcnJlY3RseS4gV2hpbGUgaWYgMCBpcyBhbiBpbnZhbGlkIHBoeXNp
Y2FsIGFkZHJlc3MgaXQgbWF5IGNhdXNlIGEKPiA+ID4gPiBmYXVsdCBhbmQgdHJpZ2dlciBhIGNy
YXNoLgo+ID4gPiA+Cj4gPiA+ID4gSW4gdjUuMCB0aGlzIHdhcyBpbmNpZGVudGFsbHkgZml4ZWQg
YnkgY29tbWl0IDU1ODk3YWY2MzA5MSAoImRtYS1kaXJlY3Q6Cj4gPiA+ID4gbWVyZ2Ugc3dpb3Rs
Yl9kbWFfb3BzIGludG8gdGhlIGRtYV9kaXJlY3QgY29kZSIpLCBhcyB0aGlzIG1vdmVkIHRoZQo+
ID4gPiA+IGRtYS1hcGkgdG8gdXNlIHRoZSBwYWdlIHBvaW50ZXIgaW4gdGhlIHNnX2xpc3QsIGFu
ZCAoZm9yIElvbiBidWZmZXJzIGF0Cj4gPiA+ID4gbGVhc3QpIHRoaXMgd2lsbCBhbHdheXMgYmUg
dmFsaWQgaWYgdGhlIHNnX2xpc3QgZXhpc3RzIGF0IGFsbC4KPiA+ID4gPgo+ID4gPiA+IEJ1dCwg
dGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2VkIGluIHY1LjMgd2l0aAo+ID4gPiA+IGNvbW1pdCA0
NDlmYTU0ZDY4MTUgKCJkbWEtZGlyZWN0OiBjb3JyZWN0IHRoZSBwaHlzaWNhbCBhZGRyIGluCj4g
PiA+ID4gZG1hX2RpcmVjdF9zeW5jX3NnX2Zvcl9jcHUvZGV2aWNlIikgbW92ZXMgdGhlIGRtYS1h
cGkgYmFjayB0byB0aGUgb2xkCj4gPiA+ID4gYmVoYXZpb3VyIGFuZCBwaWNrcyB0aGUgZG1hX2Fk
ZHJlc3MgdGhhdCBtYXkgYmUgaW52YWxpZC4KPiA+ID4gPgo+ID4gPiA+IGRtYS1idWYgY29yZSBk
b2Vzbid0IGVuc3VyZSB0aGF0IHRoZSBidWZmZXIgaXMgbWFwcGVkIG9uIHRoZSBkZXZpY2UsIGFu
ZAo+ID4gPiA+IHRodXMgaGF2ZSBhIHZhbGlkIHNnX2xpc3QsIGJlZm9yZSBjYWxsaW5nIHRoZSBl
eHBvcnRlcidzCj4gPiA+ID4gYmVnaW5fY3B1X2FjY2Vzcy4KPiA+ID4gPgo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gPiA+ID4gLS0tCj4g
PiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyB8IDEyICsrKysrKysrKysr
Kwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4gPiA+Cj4gPiA+
ID4gUmVzdWJtaXQgd2l0aG91dCBkaXNjbGFpbWVyLCBzb3JyeSBhYm91dCB0aGF0Lgo+ID4gPiA+
Cj4gPiA+ID4gVGhpcyBzZWVtcyB0byBiZSBwYXJ0IG9mIGEgYmlnZ2VyIGlzc3VlIHdoZXJlIGRt
YS1idWYgZXhwb3J0ZXJzIGFzc3VtZQo+ID4gPiA+IHRoYXQgdGhlaXIgZG1hLWJ1ZiBiZWdpbl9j
cHVfYWNjZXNzIGFuZCBlbmRfY3B1X2FjY2VzcyBjYWxsYmFja3MgaGF2ZSBhCj4gPiA+ID4gY2Vy
dGFpbiBndWFyYW50ZWVkIGJlaGF2aW9yLCB3aGljaCBpc24ndCBlbnN1cmVkIGJ5IGRtYS1idWYg
Y29yZS4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBpbiBpb24gb25seSwg
YnV0IGl0IGFsc28gbmVlZHMgdG8gYmUgZml4ZWQgZm9yCj4gPiA+ID4gb3RoZXIgZXhwb3J0ZXJz
LCBlaXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiA+ID4g
PiBkbWEtYnVmIGNvcmUgYmVmb3JlIGNhbGxpbmcgaW50byB0aGUgZXhwb3J0ZXJzLgo+ID4gPiA+
Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBi
L2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+IGluZGV4IDM4YjUxZWFj
ZTRmOS4uN2I3NTJiYTBjYjZkIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9h
bmRyb2lkL2lvbi9pb24uYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lv
bi9pb24uYwo+ID4gPgo+ID4gPiBOb3cgdGhhdCB3ZSBoYXZlIHRoZSBkbWEtYnVmZiBzdHVmZiBp
biB0aGUgdHJlZSwgZG8gd2UgZXZlbiBuZWVkIHRoZQo+ID4gPiBpb24gY29kZSBpbiB0aGUga2Vy
bmVsIGFueW1vcmU/ICBDYW4ndCB3ZSBkZWxldGUgaXQgbm93Pwo+ID4gPgo+ID4gCj4gPiBJIGFn
cmVlIHRoYXQgd2Ugc2hvdWxkbid0IGJlIHRha2luZyBmdXJ0aGVyIChub24tc2VjdXJpdHkvY2xl
YW51cCkKPiA+IHBhdGNoZXMgdG8gdGhlIElPTiBjb2RlLgo+ID4gCj4gPiBJJ2QgbGlrZSB0byBn
aXZlIGRldmVsb3BlcnMgYSBsaXR0bGUgYml0IG9mIGEgdHJhbnNpdGlvbiBwZXJpb2QgKEkgd2Fz
Cj4gPiB0aGlua2luZyBhIHllYXIsIGJ1dCByZWFsbHkganVzdCBvbmUgTFRTIHJlbGVhc2UgdGhh
dCBoYXMgYm90aCB3b3VsZAo+ID4gZG8pIHdoZXJlIHRoZXkgY2FuIG1vdmUgdGhlaXIgSU9OIGhl
YXBzIG92ZXIgdG8gZG1hYnVmIGhlYXBzIGFuZCB0ZXN0Cj4gPiBib3RoIGFnYWluc3QgdGhlIHNh
bWUgdHJlZS4KPiA+IAo+ID4gQnV0IEkgZG8gdGhpbmsgd2UgY2FuIG1hcmsgaXQgYXMgZGVwcmVj
YXRlZCBhbmQgbGV0IGZvbGtzIGtub3cgdGhhdAo+ID4gYXJvdW5kIHRoZSBlbmQgb2YgdGhlIHll
YXIgaXQgd2lsbCBiZSBkZWxldGVkLgo+IAo+IE5vIG9uZSBldmVyIG5vdGljZXMgImRlcHJlY2lh
dGVkIiB0aGluZ3MsIHRoZXkgb25seSBub3RpY2UgaWYgdGhlIGNvZGUKPiBpcyBubyBsb25nZXIg
dGhlcmUgOikKPiAKPiBTbyBJJ20gYWxsIGZvciBqdXN0IGRlbGV0aW5nIGl0IGFuZCBzZWVpbmcg
d2hvIGV2ZW4gbm90aWNlcy4uLgoKKzEgb24ganVzdCBkZWxldGluZyBpb24gYW5kIHdhdGNoaW5n
IGlmIGFueW9uZSBub3RpY2VzLiBJbiBjYXNlIHlvdSdyZQp0eXBpbmcgdGhhdCBwYXRjaCwgaGVy
ZSdzIG15OgoKQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
CgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
