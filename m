Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B0ED524855C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:52:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1DE960428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:52:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C0B2F65FD7; Tue, 18 Aug 2020 12:52:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58B0C666F9;
	Tue, 18 Aug 2020 12:32:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4394F61627
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 01:09:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 36D3161655; Tue,  4 Aug 2020 01:09:32 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by lists.linaro.org (Postfix) with ESMTPS id 09EA561627
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 01:09:30 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k2lS5-008ndS-Kd; Tue, 04 Aug 2020 01:09:13 +0000
Date: Tue, 4 Aug 2020 02:09:13 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <20200804010913.GA2096725@ZenIV.linux.org.uk>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803222831.GI1236603@ZenIV.linux.org.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Jonathan Corbet <corbet@lwn.net>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-doc@vger.kernel.org,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 kernel-team <kernel-team@android.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf/tracing: Add dma-buf trace
	events
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMTE6Mjg6MzFQTSArMDEwMCwgQWwgVmlybyB3cm90ZToK
Cj4gSU9XLCB3aGF0IHRoZSBoZWxsIGlzIHRoYXQgaG9ycm9yIGZvcj8gIFlvdSBkbyByZWFsaXpl
LCBmb3IgZXhhbXBsZSwgdGhhdCB0aGVyZSdzCj4gc3VjaCB0aGluZyBhcyBkdXAoKSwgcmlnaHQ/
ICBBbmQgZHVwMigpIGFzIHdlbGwuICBBbmQgd2hpbGUgd2UgYXJlIGF0IGl0LCBob3cKPiBkbyB5
b3Uga2VlcCB0cmFjayBvZiByZW1vdmFscywgY29uc2lkZXJpbmcgdGhlIGZhY3QgdGhhdCB5b3Ug
Y2FuIHN0aWNrIGEgZmlsZQo+IHJlZmVyZW5jZSBpbnRvIFNDTV9SSUdIVFMgZGF0YWdyYW0gc2Vu
dCB0byB5b3Vyc2VsZiwgY2xvc2UgZGVzY3JpcHRvcnMgYW5kIGFuIGhvdXIKPiBsYXRlciBwaWNr
IHRoYXQgZGF0YWdyYW0sIHN1ZGRlbmx5IGdldHRpbmcgZGVzY3JpcHRvciBiYWNrPwo+IAo+IEJl
c2lkZXMsICJJIGhhdmUgbm8gZGVzY3JpcHRvcnMgbGVmdCIgIT0gIkkgY2FuJ3QgYmUgY3VycmVu
dGx5IHNpdHRpbmcgaW4gdGhlIG1pZGRsZQo+IG9mIHN5c2NhbGwgb24gdGhhdCBzdWNrZXIiOyBj
bG9zZSgpIGRvZXMgKk5PVCogdGVybWluYXRlIG9uZ29pbmcgb3BlcmF0aW9ucy4KPiAKPiBZb3Ug
YXJlIGxvb2tpbmcgYXQgdGhlIGRyYXN0aWNhbGx5IHdyb25nIGFic3RyYWN0aW9uIGxldmVsLiAg
UGxlYXNlLCBkZXNjcmliZSB3aGF0Cj4gaXQgaXMgdGhhdCB5b3UgYXJlIHRyeWluZyB0byBhY2hp
ZXZlLgoKX0lGXyBpdCdzICJ3aG8ga2VlcHMgYSBwYXJ0aWN1bGFybHkgbG9uZy1saXZlZCBzdWNr
ZXIgcGlubmVkIiwgSSB3b3VsZCBzdWdnZXN0CmZ1c2VyKDEpIHJ1biB3aGVuIHlvdSBkZXRlY3Qg
dGhhdCBraW5kIG9mIGxvbmctbGl2ZWQgZG1hYnVmLiAgV2l0aCBldmVudHMgZ2VuZXJhdGVkCmJ5
IHRoZWlyIGNvbnN0cnVjdG9ycyBhbmQgZGVzdHJ1Y3RvcnMsIGFuZCBkZXRlY3Rpb24gb2YgbG9u
Z2V2aXR5IGRvbmUgYmFzZWQgb24KdGhhdC4KCkJ1dCB0aGF0J3Mgb25seSBhIHNlbWktYmxpbmQg
Z3Vlc3MgYXQgdGhlIHRoaW5ncyB5b3UgYXJlIHRyeWluZyB0byBhY2hpZXZlOyBwbGVhc2UsCmRl
c2NyaWJlIHdoYXQgaXQgcmVhbGx5IGlzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
