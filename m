Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 588B3248573
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:56:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F1CE60EFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:56:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6E197619B1; Tue, 18 Aug 2020 12:56:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1564166701;
	Tue, 18 Aug 2020 12:33:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D805661887
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 18:27:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B94F76196D; Tue,  4 Aug 2020 18:27:46 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by lists.linaro.org (Postfix) with ESMTPS id 6781261887
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 18:27:45 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k31em-009HhW-2E; Tue, 04 Aug 2020 18:27:24 +0000
Date: Tue, 4 Aug 2020 19:27:24 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <20200804182724.GK1236603@ZenIV.linux.org.uk>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
 <20200804010913.GA2096725@ZenIV.linux.org.uk>
 <20200804154451.GA948167@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804154451.GA948167@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: Jonathan Corbet <corbet@lwn.net>, kernel-team <kernel-team@android.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>, linux-doc@vger.kernel.org,
 Ioannis Ilkos <ilkos@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
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

T24gVHVlLCBBdWcgMDQsIDIwMjAgYXQgMDM6NDQ6NTFQTSArMDAwMCwgS2FsZXNoIFNpbmdoIHdy
b3RlOgoKPiBIaSBBbC4gVGhhbmsgeW91IGZvciB0aGUgY29tbWVudHMuIFVsdGltYXRlbHkgd2hh
dCB3ZSBuZWVkIGlzIHRvIGlkZW50aWZ5IHByb2Nlc3Nlcwo+IHRoYXQgaG9sZCBhIGZpbGUgcmVm
ZXJlbmNlIHRvIHRoZSBkbWEtYnVmLiBVbmZvcnR1bmF0ZWx5IHdlIGNhbid0IHVzZSBvbmx5Cj4g
ZXhwbGljaXQgZG1hX2J1Zl9nZXQvZG1hX2J1Zl9wdXQgdG8gdHJhY2sgdGhlbSBiZWNhdXNlIHdo
ZW4gYW4gRkQgaXMgYmVpbmcgc2hhcmVkCj4gYmV0d2VlbiBwcm9jZXNzZXMgdGhlIGZpbGUgcmVm
ZXJlbmNlcyBhcmUgdGFrZW4gaW1wbGljaXRseS4KPiAKPiBGb3IgZXhhbXBsZSwgb24gdGhlIHNl
bmRlciBzaWRlOgo+ICAgIHVuaXhfZGdyYW1fc2VuZG1zZyAtPiBzZW5kX3NjbSAtPiBfX3NlbmRf
c2NtIC0+IHNjbV9mcF9jb3B5IC0+IGZnZXRfcmF3Cj4gYW5kIG9uIHRoZSByZWNlaXZlciBzaWRl
Ogo+ICAgIHVuaXhfZGdyYW1fcmVjdm1zZyAtPiBzY21fcmVjdiAtPiBzY21fZGV0YWNoX2ZkcyAt
PiBfX3NjbV9pbnN0YWxsX2ZkIC0+IGdldF9maWxlCj4gCj4gSSB1bmRlcnN0YW5kIG5vdyB0aGF0
IGZkX2luc3RhbGwgaXMgbm90IGFuIGFwcHJvcHJpYXRlIGFic3RyYWN0aW9uIGxldmVsIHRvIHRy
YWNrIHRoZXNlLgo+IElzIHRoZXJlIGEgbW9yZSBhcHByb3ByaWF0ZSBhbHRlcm5hdGl2ZSB3aGVy
ZSB3ZSBjb3VsZCB1c2UgdG8gdHJhY2sgdGhlc2UgaW1wbGljaXQgZmlsZQo+IHJlZmVyZW5jZXM/
CgpUaGVyZSBpcyBubyBzaW5nbGUgbG9jayB0aGF0IHdvdWxkIHN0YWJpbGl6ZSB0aGUgZGVzY3Jp
cHRvciB0YWJsZXMgb2YgYWxsCnByb2Nlc3Nlcy4gIEFuZCB0aGVyZSdzIG5vdCBnb2luZyB0byBi
ZSBvbmUsIGV2ZXIgLSBpdCB3b3VsZCBiZSBhIGNvbnRlbnRpb24KcG9pbnQgZnJvbSBoZWxsLCBz
aW5jZSB0aGF0IHdvdWxkJ3ZlIGJlZW4gYSBzeXN0ZW0td2lkZSBsb2NrIHRoYXQgd291bGQgaGF2
ZQp0byBiZSB0YWtlbiBieSAqQUxMKiBzeXNjYWxscyBtb2RpZnlpbmcgYW55IGRlc2NyaXB0b3Ig
dGFibGUuICBOb3QgZ29pbmcgdG8KaGFwcGVuLCBmb3Igb2J2aW91cyByZWFzb25zLiAgTW9yZW92
ZXIsIHlvdSB3b3VsZCBoYXZlIHRvIGhhdmUgZm9yaygyKSB0YWtlCnRoZSBzYW1lIGxvY2ssIHNp
bmNlIGl0IGRvZXMgY29weSBkZXNjcmlwdG9yIHRhYmxlLiAgQW5kIGNsb25lKDIpIGVpdGhlciBk
b2VzCnRoZSBzYW1lLCBvciBoYXMgdGhlIGNoaWxkIHNoYXJlIHRoZSBkZXNjcmlwdG9yIHRhYmxl
IG9mIHBhcmVudC4KCldoYXQncyBtb3JlLCBhIHJlZmVyZW5jZSB0byBzdHJ1Y3QgZmlsZSBjYW4g
Ymxvb2R5IHdlbGwgc3Vydml2ZSB3aXRob3V0CmEgc2luZ2xlIGRlc2NyaXB0b3IgcmVmZXJpbmcg
dG8gdGhhdCBmaWxlLiAgSW4gdGhlIGV4YW1wbGUgeW91J3ZlIG1lbnRpb25lZAphYm92ZSwgc2Vu
ZGVyIGhhcyBldmVyIHJpZ2h0IHRvIGNsb3NlIGFsbCBkZXNjcmlwdG9ycyBpdCBoYXMgc2VudC4g
ICBGaWxlcwp3aWxsIHN0YXkgb3BlbmVkIGFzIGxvbmcgYXMgdGhlIHJlZmVyZW5jZXMgYXJlIGhl
bGQgaW4gdGhlIGRhdGFncmFtOyB3aGVuCnRoYXQgZGF0YWdyYW0gaXMgcmVjZWl2ZWQsIHRoZSBy
ZWZlcmVuY2VzIHdpbGwgYmUgaW5zZXJ0ZWQgaW50byByZWNlcGllbnQncwpkZXNjcmlwdG9yIHRh
YmxlLiAgQXQgdGhhdCBwb2ludCB5b3UgYWdhaW4gaGF2ZSBkZXNjcmlwdG9ycyByZWZlcmluZyB0
bwp0aGF0IGZpbGUsIGNhbiBkbyBhbnkgSU8gb24gaXQsIGV0Yy4KClNvICJ0aGUgc2V0IG9mIHBy
b2Nlc3NlcyB0aGF0IGhvbGQgYSBmaWxlIHJlZmVyZW5jZSB0byB0aGUgZG1hLWJ1ZiIgaXMKCSog
aW5oZXJlbnRseSB1bnN0YWJsZSwgdW5sZXNzIHlvdSBhcmUgd2lsbGluZyB0byBmcmVlemUgZXZl
cnkKcHJvY2VzcyBpbiB0aGUgc3lzdGVtIGV4Y2VwdCBmb3IgdGhlIG9uZSB0cnlpbmcgdG8gZmlu
ZCB0aGF0IHNldC4KCSogY2FuIHJlbWFpbiBlbXB0eSBmb3IgYW55IGFtb3VudCBvZiB0aW1lICho
b3Vycywgd2Vla3MsIHdoYXRldmVyKSwKb25seSB0byBnZXQgbm9uLWVtcHR5IGxhdGVyLCB3aXRo
IHN5c2NhbGxzIGFmZmVjdGluZyB0aGUgb2JqZWN0IGluIHF1ZXN0aW9uCmRvbmUgYWZ0ZXJ3YXJk
cy4KClNvLi4uIHdoYXQgd2VyZSB5b3UgZ29pbmcgdG8gZG8gd2l0aCB0aGF0IHNldCBpZiB5b3Ug
Y291bGQgY2FsY3VsYXRlIGl0PwpJZiBpdCdzIHJlYWxseSAiaG93IGRvIHdlIGRlYnVnIGEgbGVh
az8iLCBpdCdzIG9uZSB0aGluZzsgaW4gdGhhdCBjYXNlCkkgd291bGQgc3VnZ2VzdCBrZWVwaW5n
IHRyYWNrIG9mIGNyZWF0aW9uL2Rlc3RydWN0aW9uIG9mIG9iamVjdHMgKG5vdApnYWluaW5nL2Ry
b3BwaW5nIHJlZmVyZW5jZXMgLSBhY3R1YWwgY29uc3RydWN0b3JzIGFuZCBkZXN0cnVjdG9ycykg
dG8Kc2VlIHdoYXQgZ2V0cyBzdHVjayBhcm91bmQgZm9yIHRvbyBsb25nIGFuZCB1c2UgZnVzZXIo
MSkgdG8gdHJ5IGFuZCBsb2NhdGUKdGhlIGN1bHByaXRzIGlmIHlvdSBzZWUgdGhhdCBzb21ldGhp
bmcgKndhcyogbGl2aW5nIGZvciB0b28gbG9uZy4gICJUcnkiCnNpbmNlIHRoZSBvbmx5IHJlZmVy
ZW5jZSBtaWdodCBpbmRlZWQgaGF2ZSBiZWVuIHN0YXNoZWQgaW50byBhbiBTQ01fUklHSFRTCmRh
dGFncmFtIHNpdHRpbmcgaW4gYSBxdWV1ZSBvZiBzb21lIEFGX1VOSVggc29ja2V0LiAgTm90ZSB0
aGF0ICJmdXNlcgpuZWVkcyBlbGV2YXRlZCBwcml2ZWxlZ2VzIiBpcyBub3QgYSBzdHJvbmcgYXJn
dW1lbnQgLSB0aGUgYWJpbGl0eSB0bwpkbyB0aGF0IHNvcnQgb2YgdHJhY2tpbmcgZG9lcyBpbXBs
eSBlbGV2YXRlZCBwcml2ZWxlZ2VzIGFueXdheSwgYW5kCmhhdmluZyBhIHJvb3QgcHJvY2VzcyB0
YWtpbmcgcmVxdWVzdHMgYWxvbmcgdGhlIGxpbmVzIG9mICJnaW1tZSB0aGUKbGlzdCBvZiBQSURz
IHRoYXQgaGF2ZSBzdWNoLWFuZC1zdWNoIGRtYV9idWYgaW4gdGhlaXIgZGVzY3JpcHRvciB0YWJs
ZSIKaXMgbm90IG11Y2ggb2YgYW4gYXR0YWNrIHN1cmZhY2UuCgpJZiB5b3Ugd2FudCB0byB1c2Ug
aXQgZm9yIHNvbWV0aGluZyBlbHNlLCB5b3UnbGwgbmVlZCB0byBkZXNjcmliZSB0aGF0CmludGVu
ZGVkIHVzZTsgdGhlcmUgbWlnaHQgYmUgc2FuZSB3YXlzIHRvIGRvIHRoYXQsIGJ1dCBpdCdzIGhh
cmQgdG8KY29tZSB1cCB3aXRoIG9uZSB3aXRob3V0IGtub3dpbmcgd2hhdCdzIGJlaW5nIGF0dGVt
cHRlZC4uLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
