Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6D72561E5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Aug 2020 22:17:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F6D61957
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Aug 2020 20:17:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EB5EF619AC; Fri, 28 Aug 2020 20:17:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58F2762BBE;
	Fri, 28 Aug 2020 20:17:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E6352607E0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Aug 2020 20:14:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA586619AC; Fri, 28 Aug 2020 20:14:21 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id AFB4E607E0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Aug 2020 20:14:19 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id e23so289127otk.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Aug 2020 13:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HoCq7hZfHCm7PsYPPZZKrsBeqX1HiFjWHIVfF9O1nts=;
 b=NqtjS2cEXh+o9/kcrlpFI1EEZNL7KvgTy+QBXmiWJvqz8ST2uTvHPdymLVn22266ef
 QiiYdLBsQGeAUJ8g9TtofD9iwe5Ura5P5SCf7j4wI0y99dHKfS8UclZx+Pb1FYmaC+0x
 If9H9/DlgAuSvvsVsBrc2iLY776k4OVEgZMh+2UNexFsjwtb1l/PvnMtacIEFNKMrzNj
 iBAwJUtvtflSpN/EG/YU3WcQMLTeJGNcPtLFtAfj1KaBBJejhkaNe8vVZWH17nKECgPy
 0ihlFt8RGpoxCC/QtpnPCuUiIJgpFKKrlYllXhYRb2l1JP/dhcNpm77FUnlEuNMtoOjW
 7CQQ==
X-Gm-Message-State: AOAM530i+49vWYuoujlzxfv0GWs4FhQ6hCaiE+SQu3E63TrmNqtvgWM+
 3l9WiWYdOoh4acJqGdsKQOInz0L7fxrzTbEjnI9VJHJy
X-Google-Smtp-Source: ABdhPJzxX5NHAVqNMEiVv/SKzj0eFHAuVGNEsCu+WHxPysGOtwVZFlHbFei6kXHHi4pHYTnTzkL3E6WiefJFIeH/j20=
X-Received: by 2002:a9d:7846:: with SMTP id c6mr239804otm.221.1598645658901;
 Fri, 28 Aug 2020 13:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
 <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
 <20200828080527.GA1005274@kroah.com>
In-Reply-To: <20200828080527.GA1005274@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 28 Aug 2020 13:14:06 -0700
Message-ID: <CALAqxLWk9uY=Xro1EJ=EQaEuQKS+AN6u0Dny-8-__m5TkxrZSQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Amit Pundir <amit.pundir@linaro.org>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: remove from the tree
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

T24gRnJpLCBBdWcgMjgsIDIwMjAgYXQgMTowNSBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgQXVnIDI3LCAyMDIwIGF0
IDExOjU0OjEyQU0gLTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gT24gVGh1LCBBdWcgMjcs
IDIwMjAgYXQgMTA6MTcgQU0gR3JlZyBLcm9haC1IYXJ0bWFuCj4gPiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4gPiBPbiBUaHUsIEF1ZyAyNywgMjAyMCBhdCAxMDozMTo0
MVBNICswNTMwLCBBbWl0IFB1bmRpciB3cm90ZToKPiA+ID4gPiBJIGRvbid0IGtub3cgd2hhdCBp
cyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaGVyZS4gSSBqdXN0IHdhbnQgdG8KPiA+ID4gPiBoaWdo
bGlnaHQgdGhhdCBBT1NQJ3MgYXVkaW8gKGNvZGVjMikgSEFMIGRlcGVuZHMgb24gdGhlIElPTiBz
eXN0ZW0KPiA+ID4gPiBoZWFwIGFuZCBpdCB3aWxsIGJyZWFrIEFPU1AgZm9yIHBlb3BsZSB3aG8g
Ym9vdCBtYWlubGluZSBvbiB0aGVpcgo+ID4gPiA+IGRldmljZXMsIGV2ZW4gZm9yIGp1c3QgdGVz
dGluZyBwdXJwb3NlIGxpa2Ugd2UgZG8gaW4gTGluYXJvLiBSaWdodCBub3cKPiA+ID4gPiB3ZSBu
ZWVkIG9ubHkgMSAoQW5kcm9pZCBzcGVjaWZpYyBvdXQtb2YtdHJlZSkgcGF0Y2ggdG8gYm9vdCBB
T1NQIHdpdGgKPiA+ID4gPiBtYWlubGluZSBhbmQgU3VtaXQgaXMgYWxyZWFkeSB0cnlpbmcgdG8g
dXBzdHJlYW0gdGhhdCB2bWEgbmFtaW5nCj4gPiA+ID4gcGF0Y2guIFJlbW92YWwgb2YgaW4ta2Vy
bmVsIElPTiwgd2lsbCBqdXN0IGFkZCBtb3JlIHRvIHRoYXQgZGVsdGEuCj4gPiA+Cj4gPiA+IEFz
IEFPU1Agd2lsbCBjb250aW51ZSB0byByZWx5IG9uIElPTiBhZnRlciBEZWNlbWJlciBvZiB0aGlz
IHllYXIsIGFsbAo+ID4gPiB5b3UgYXJlIGRvaW5nIGlzIHBvc3Rwb25pbmcgdGhlIGluZXZpdGFi
bGUgYSBmZXcgbW9yZSBtb250aHMuCj4gPiA+Cj4gPiA+IFB1c2ggYmFjayBvbiB0aGUgQW5kcm9p
ZCB0ZWFtIHRvIGZpeCB1cCB0aGUgY29kZSB0byBub3QgdXNlIElPTiwgdGhleQo+ID4gPiBrbm93
IHRoaXMgbmVlZHMgdG8gaGFwcGVuLgo+ID4KPiA+IFRoZSBwb2ludCB0aG91Z2gsIGlzIHlvdXIg
bWFpbiBwcmVtaXNlIHRoYXQgbm8gb25lIGlzIHVzaW5nIHRoaXMgaXNuJ3QgdHJ1ZS4KPgo+IFRo
ZXkgYXJlIHVzaW5nIHRoZSB2ZXJzaW9uIG9mIGlvbiBpbiB0aGUgQW5kcm9pZCBrZXJuZWwgdHJl
ZSwgeWVzLCBhcyBpdAo+IGhhcyBuZXcgZmVhdHVyZXMgdGhhdCBtYW55IHBlb3BsZSBhcmUgcmVs
eWluZyBvbi4KPgo+IFRoZSB2ZXJzaW9uIHRoYXQgaXMgY3VycmVudGx5IGluIHRoZSBrZXJuZWwg
dHJlZSBpcyBjcmlwcGxlZCwgYW5kIG1heWJlCj4gd29ya3MgZm9yIHNvbWUgdXNlIGNhc2VzLCBi
dXQgbm90IHRoZSBtYWpvcml0eSwgcmlnaHQ/CgpTbyBteSB1bmRlcnN0YW5kaW5nIGlzIHRoZSBB
bmRyb2lkIENvbW1vbiBLZXJuZWwgdHJlZSB2ZXJzaW9uIHdhcwptb3N0bHkgcmV3b3JrZWQgdG8g
YWxsb3cgaGVhcHMgYXMgbW9kdWxlcywgYW5kIGFsbG93ZWQgaGVhcHMgdG8gaGF2ZQp0aGVpciBv
d24gZXhwb3J0ZXIgbG9naWMgKG5vdCB1bmxpa2UgaG93IGRtYWJ1ZiBoZWFwcyBkbyBpdCkuIFRo
ZSBtYWluCmFsbG9jYXRpb24gaW50ZXJmYWNlIGlzIG1heWJlIHNsaWdodGx5IHR3ZWFrZWQgZm9y
IG91dC1vZi10cmVlIHZlbmRvcgpoZWFwcywgYnV0IGRvZXNuJ3QgYWZmZWN0IHRoZSBpbi1zdGFn
aW5nIGhlYXBzLiBUaGVyZSdzIGFsc28gYSBmZXcKb3B0aW1pemF0aW9ucyB3ZSBoYXZlIHNraXBw
ZWQgdGFraW5nIHVwc3RyZWFtLiBTbyB5ZXMsIHRoZXJlIGFyZQpkaWZmZXJlbmNlcywgYnV0IEkg
ZG9uJ3QgZmVlbCB5b3VyIGNoYXJhY3Rlcml6YXRpb24gaXMgcXVpdGUgYWNjdXJhdGUuCgoKPiA+
IEknbSBhY3RpdmVseSB3b3JraW5nIHdpdGggSHJpZHlhIGFuZCBmb2xrcyBvbiB0aGUgY29kZWMy
IEhBTCBzaWRlIHRvCj4gPiB0cmFuc2l0aW9uIHRoaXMgb24gdGhlIHVzZXJsYW5kIHNpZGU6Cj4g
PiAgIGh0dHBzOi8vYW5kcm9pZC1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9jL3BsYXRmb3JtL2Zy
YW1ld29ya3MvYXYvKy8xMzY4OTE4LzMKPiA+Cj4gPiBJJ2QgbGlrZSBBT1NQIHRvIG5vdCB1c2Ug
SU9OIGFmdGVyIFNlcHRlbWJlciAodGhvdWdoIGJlaW5nIGV4dGVybmFsIEkKPiA+IGNhbid0IHBy
b21pc2UgYW55dGhpbmcpLCBtdWNoIGxlc3MgY29udGludWluZyBhZnRlciBEZWNlbWJlci4KPgo+
IFRoZSBhbmRyb2lkIHRlYW0gaGFzIHNhaWQgdGhleSB3aWxsIGJlIGRyb3BwaW5nIElPTiB1c2Ug
Zm9yIHRoZSAibmV4dCIKPiBBbmRyb2lkIHJlbGVhc2UsIHdoaWNoIGlzIHNvbWV0aW1lIG5leHQg
eWVhciBmcm9tIHdoYXQgSSByZWNhbGwuCj4gRGVjZW1iZXIgaXMgcHJvYmFibHkgbm90IGdvaW5n
IHRvIGhhcHBlbiA6KQoKQU9TUCBpcyB3aGF0IHRoZSBuZXh0IEFuZHJvaWQgcmVsZWFzZSBmb3Jr
cyBvZmYgb2YsIHNvIGl0IG5lZWRzIHRvIGJlCmZpeGVkIGZpcnN0LgoKPiA+IEkgd2FudCB0aGlz
IG1pZ3JhdGlvbiB0byBoYXBwZW4gYXMgbXVjaCBhcyBhbnlvbmUuICBCdXQgSSdkIHByZWZlciB0
bwo+ID4ga2VlcCBJT04gaW4gc3RhZ2luZyB1bnRpbCBhZnRlciB0aGUgTFRTIGlzIGFubm91bmNl
ZC4gSGF2aW5nIGJvdGgKPiA+IGFyb3VuZCBoZWxwcyBkZXZlbG9wbWVudCBmb3IgdGhlIHRyYW5z
aXRpb24sIHdoaWNoIGhlbHBzIHVzIGhhdmUgYQo+ID4gcmVsaWFibGUgc29sdXRpb24sIHdoaWNo
IGhlbHBzIHZlbmRvcnMgdG8gbWlncmF0ZSBhbmQgYmUgYWJsZSB0byBkbwo+ID4gY29tcGFyYXRp
dmUgcGVyZm9ybWFuY2UgdGVzdGluZy4KPgo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IGhhdmlu
ZyB0aGlzIGluIHRoZSAibmV4dCIga2VybmVsIGhlbHBzIHVzIHdpdGgKPiBoZXJlLiAgQW5kIEkg
d291bGQgcmVhbGx5IHJlYWxseSBwcmVmZXIgdG8gTk9UIGhhdmUgYW4gb3V0ZGF0ZWQgdmVyc2lv
bgo+IG9mIHRoaXMgY29kZSBpbiBhIGtlcm5lbCB0cmVlIHRoYXQgSSBhbSBnb2luZyB0byBoYXZl
IHRvIHN1cHBvcnQgZm9yIHRoZQo+IG5leHQgWCBudW1iZXIgb2YgeWVhcnMsIHdoZW4gbm8gb25l
IGlzIHVzaW5nIHRoYXQgdmVyc2lvbiBvZiB0aGUgZHJpdmVyLgo+Cj4gV2hhdCBpcyB0aGlzIExU
UyBmaXhhdGlvbiB0byBrZWVwIHRoaXMgY29kZSBhcm91bmQgZm9yPyAgV2hvIGRvZXMgaXQKPiBo
ZWxwPwoKVmVuZG9ycyB1c3VhbGx5IHRhcmdldCBMVFMgcmVsZWFzZXMgZm9yIHRoZWlyIGhhcmR3
YXJlIGJyaW5ndXBzLgpIYXZpbmcgYSBMVFMgcmVsZWFzZSB3aXRoIGJvdGggSU9OIGFuZCBETUEg
QlVGIEhlYXBzIGhlbHBzIHRoZW0KdmFsaWRhdGUgdGhlaXIgb2xkIElPTiBzb2x1dGlvbiBhcyBw
ZXJmb3JtYW50LCBhbmQgdGhlbiBtaWdyYXRlIHRvIERNQQpCVUYgSGVhcHMgYW5kIGJlIGFibGUg
dG8gZG8gcGVyZm9ybWFuY2UgY29tcGFyaXNvbnMgaG9sZGluZyBhbGwgb3RoZXIKdGhpbmdzIGVx
dWFsLgoKPiA+IEkgZG8gYXBwcmVjaWF0ZSB0aGF0IGtlZXBpbmcgaXQgaXNuJ3QgZnJlZSwgYnV0
IEkgYWxzbyBkb24ndCBmZWVsIHRoZQo+ID4gY2hhb3MtbW9ua2V5IGFwcHJvYWNoIGhlcmUgaXMg
cmVhbGx5IG1vdGl2YXRpb25hbCBpbiB0aGUgd2F5IHlvdQo+ID4gaW50ZW5kLgo+Cj4gSSBkb24n
dCBzZWUgaXQgaGVscGluZyBhbnlvbmUgdG8gbGVhdmUgdGhpcyBhcm91bmQsIGV4Y2VwdCB0byBj
YXVzZQo+IG1lcmdlIGlzc3VlcyBmb3IgbWUsIGFuZCBkZXZlbG9wbWVudCBpc3N1ZXMgZm9yIG90
aGVyIGRldmVsb3BlcnMuCj4KPiBBbnlvbmUgd2hvIHJlYWxseSB3YW50cyB0aGlzIGNvZGUsIGNh
biBlYXNpbHkgcmV2ZXJ0IHRoZSBkZWxldGlvbiBhbmQKPiBtb3ZlIG9uIGFuZCBncmFiIHRoZSBB
T1NQIGNvcHkgb2YgdGhlIGNvZGUuICBUaGF0J3Mgd2hhdCB0aGV5IGRpZCB3aGVuCj4gd2UgZGVs
ZXRlZCBvdGhlciBBbmRyb2lkIGZlYXR1cmVzIHRoYXQgYXJlIHN0aWxsIHJlbGllZCBvbi4KPgo+
IEdpdmVuIHRoYXQgdGhlICJpc24ndCBmcmVlIiBpcyBjYXVzaW5nIF9tZV8gcmVhbCBwYWluLCBh
bmQgbm90IHRoZQo+IGFjdHVhbCB1c2VycyBvZiB0aGlzIGNvZGUsIEkgYW0gbGVhbmluZyB0b3dh
cmQgd2FudGluZyB0byBtb3ZlIHRoYXQKPiBwYWluL2Nvc3QgdG8gdGhvc2UgdXNlcnMsIGZvciBv
YnZpb3VzIHJlYXNvbnMuCgpTdXJlLiBBZ2FpbiwgSSBkbyB1bmRlcnN0YW5kIHRoZSBkZXNpcmUg
dG8gcmVtb3ZlIGl0LCBhbmQgaXQncyB5b3VyCnJpZ2h0IHRvIGRvIHNvLiBLZWVwaW5nIHRoZSBj
b2RlIGZvciBhbiBleHRyYSB5ZWFyIGluIExUUyAob3ZlciA1LjQpCmlzIGEgY29zdCwgc28gSSB1
bmRlcnN0YW5kIGlmIHlvdSBkcm9wIGl0LiBCdXQgSSdsbCBhc2sgdGhhdCB5b3UgbWFrZQp0aGF0
IGp1ZGdlbWVudCBjbGVhciBhcyB0aGUgbWFpbiBtb3RpdmF0b3IvcmF0aW9uYWxlIG9mIHRoZSBj
b21taXQKbWVzc2FnZSwgcmF0aGVyIHRoYW4gZmxpcHBhbnRseSBwcmV0ZW5kaW5nIGl0J3Mgbm90
IGJlaW5nIHVzZWQsIGFuZAp0aGF0IGV2ZXJ5b25lIGFncmVlcyBpdCBoYXMgbm8gdXNlZnVsbmVz
cyB0byBrZWVwIGFyb3VuZCAoZXNwZWNpYWxseQphZnRlciB3ZSd2ZSBoYWQgdGhpcyBjb252ZXJz
YXRpb24gYSBmZXcgdGltZXMgYWxyZWFkeSB0aGlzIHllYXIpLgoKdGhhbmtzCi1qb2huCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
