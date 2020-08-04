Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AF824857A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:56:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0164F6162C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:56:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E8512619D1; Tue, 18 Aug 2020 12:56:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B169566707;
	Tue, 18 Aug 2020 12:33:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CA9B9607C7
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 20:43:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B585D61887; Tue,  4 Aug 2020 20:43:03 +0000 (UTC)
Received: from mail-vk1-f194.google.com (mail-vk1-f194.google.com
 [209.85.221.194])
 by lists.linaro.org (Postfix) with ESMTPS id AF6A4607C7
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 20:43:02 +0000 (UTC)
Received: by mail-vk1-f194.google.com with SMTP id o2so1529273vkn.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Aug 2020 13:43:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TlCjdbRMbP/wUOWxhVpHiQRbe/DkH4AfQXHxlQhoVjA=;
 b=b8i+Ker//n7cXLsrXcmTsf7MEw2PILqYdv+zn6AAELwUO8mtbQTROGXU73uydebJLm
 S17DdN5ZtjxEjjQ2D41X2TMMVghNxyIq2KPqni0kXcJxxeNI13sAIqADewlk6xy0tCBV
 ntykMnfjjWlQDgZB1KMjm++KlUD8daz9MJ/WwnsZ3cXT6QEV30Zbm/qkGegvoMFHvcU2
 tVua95ifbCg/ng1VCIHOLn92mV7cREVyaN85CffyDxBrM7JSfTyGKxaAfNyv/ZLsf9u/
 g2OxXLef3GY8i9AhsPQ++P+mWnEssBzKH83/pyKtP+BrO2yOJiBavdIY+1X4RJMuYYLY
 y7Xw==
X-Gm-Message-State: AOAM530qUohyFLWRRNGTVgc7r8NW7KSC2vqmbEQm3LxLqFv3N+x67EWY
 gbvzoPNt/V+Sd6m3/pB7g0OOMg==
X-Google-Smtp-Source: ABdhPJw4pSB0K0iA7nRulTXnJfiqTxaQf1+i2vnos6vZbo7/HN0GM59TI/tMLvET0NGIlCFNwPQn1A==
X-Received: by 2002:a1f:eac1:: with SMTP id i184mr80498vkh.66.1596573782070;
 Tue, 04 Aug 2020 13:43:02 -0700 (PDT)
Received: from google.com (182.71.196.35.bc.googleusercontent.com.
 [35.196.71.182])
 by smtp.gmail.com with ESMTPSA id a3sm2560129vsh.31.2020.08.04.13.43.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Aug 2020 13:43:01 -0700 (PDT)
Date: Tue, 4 Aug 2020 20:42:58 +0000
From: Kalesh Singh <kaleshsingh@google.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20200804204258.GA1002979@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
 <20200804010913.GA2096725@ZenIV.linux.org.uk>
 <20200804154451.GA948167@google.com>
 <20200804182724.GK1236603@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804182724.GK1236603@ZenIV.linux.org.uk>
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

T24gVHVlLCBBdWcgMDQsIDIwMjAgYXQgMDc6Mjc6MjRQTSArMDEwMCwgQWwgVmlybyB3cm90ZToK
PiBPbiBUdWUsIEF1ZyAwNCwgMjAyMCBhdCAwMzo0NDo1MVBNICswMDAwLCBLYWxlc2ggU2luZ2gg
d3JvdGU6Cj4gCj4gPiBIaSBBbC4gVGhhbmsgeW91IGZvciB0aGUgY29tbWVudHMuIFVsdGltYXRl
bHkgd2hhdCB3ZSBuZWVkIGlzIHRvIGlkZW50aWZ5IHByb2Nlc3Nlcwo+ID4gdGhhdCBob2xkIGEg
ZmlsZSByZWZlcmVuY2UgdG8gdGhlIGRtYS1idWYuIFVuZm9ydHVuYXRlbHkgd2UgY2FuJ3QgdXNl
IG9ubHkKPiA+IGV4cGxpY2l0IGRtYV9idWZfZ2V0L2RtYV9idWZfcHV0IHRvIHRyYWNrIHRoZW0g
YmVjYXVzZSB3aGVuIGFuIEZEIGlzIGJlaW5nIHNoYXJlZAo+ID4gYmV0d2VlbiBwcm9jZXNzZXMg
dGhlIGZpbGUgcmVmZXJlbmNlcyBhcmUgdGFrZW4gaW1wbGljaXRseS4KPiA+IAo+ID4gRm9yIGV4
YW1wbGUsIG9uIHRoZSBzZW5kZXIgc2lkZToKPiA+ICAgIHVuaXhfZGdyYW1fc2VuZG1zZyAtPiBz
ZW5kX3NjbSAtPiBfX3NlbmRfc2NtIC0+IHNjbV9mcF9jb3B5IC0+IGZnZXRfcmF3Cj4gPiBhbmQg
b24gdGhlIHJlY2VpdmVyIHNpZGU6Cj4gPiAgICB1bml4X2RncmFtX3JlY3Ztc2cgLT4gc2NtX3Jl
Y3YgLT4gc2NtX2RldGFjaF9mZHMgLT4gX19zY21faW5zdGFsbF9mZCAtPiBnZXRfZmlsZQo+ID4g
Cj4gPiBJIHVuZGVyc3RhbmQgbm93IHRoYXQgZmRfaW5zdGFsbCBpcyBub3QgYW4gYXBwcm9wcmlh
dGUgYWJzdHJhY3Rpb24gbGV2ZWwgdG8gdHJhY2sgdGhlc2UuCj4gPiBJcyB0aGVyZSBhIG1vcmUg
YXBwcm9wcmlhdGUgYWx0ZXJuYXRpdmUgd2hlcmUgd2UgY291bGQgdXNlIHRvIHRyYWNrIHRoZXNl
IGltcGxpY2l0IGZpbGUKPiA+IHJlZmVyZW5jZXM/Cj4gCj4gVGhlcmUgaXMgbm8gc2luZ2xlIGxv
Y2sgdGhhdCB3b3VsZCBzdGFiaWxpemUgdGhlIGRlc2NyaXB0b3IgdGFibGVzIG9mIGFsbAo+IHBy
b2Nlc3Nlcy4gIEFuZCB0aGVyZSdzIG5vdCBnb2luZyB0byBiZSBvbmUsIGV2ZXIgLSBpdCB3b3Vs
ZCBiZSBhIGNvbnRlbnRpb24KPiBwb2ludCBmcm9tIGhlbGwsIHNpbmNlIHRoYXQgd291bGQndmUg
YmVlbiBhIHN5c3RlbS13aWRlIGxvY2sgdGhhdCB3b3VsZCBoYXZlCj4gdG8gYmUgdGFrZW4gYnkg
KkFMTCogc3lzY2FsbHMgbW9kaWZ5aW5nIGFueSBkZXNjcmlwdG9yIHRhYmxlLiAgTm90IGdvaW5n
IHRvCj4gaGFwcGVuLCBmb3Igb2J2aW91cyByZWFzb25zLiAgTW9yZW92ZXIsIHlvdSB3b3VsZCBo
YXZlIHRvIGhhdmUgZm9yaygyKSB0YWtlCj4gdGhlIHNhbWUgbG9jaywgc2luY2UgaXQgZG9lcyBj
b3B5IGRlc2NyaXB0b3IgdGFibGUuICBBbmQgY2xvbmUoMikgZWl0aGVyIGRvZXMKPiB0aGUgc2Ft
ZSwgb3IgaGFzIHRoZSBjaGlsZCBzaGFyZSB0aGUgZGVzY3JpcHRvciB0YWJsZSBvZiBwYXJlbnQu
Cj4gCj4gV2hhdCdzIG1vcmUsIGEgcmVmZXJlbmNlIHRvIHN0cnVjdCBmaWxlIGNhbiBibG9vZHkg
d2VsbCBzdXJ2aXZlIHdpdGhvdXQKPiBhIHNpbmdsZSBkZXNjcmlwdG9yIHJlZmVyaW5nIHRvIHRo
YXQgZmlsZS4gIEluIHRoZSBleGFtcGxlIHlvdSd2ZSBtZW50aW9uZWQKPiBhYm92ZSwgc2VuZGVy
IGhhcyBldmVyIHJpZ2h0IHRvIGNsb3NlIGFsbCBkZXNjcmlwdG9ycyBpdCBoYXMgc2VudC4gICBG
aWxlcwo+IHdpbGwgc3RheSBvcGVuZWQgYXMgbG9uZyBhcyB0aGUgcmVmZXJlbmNlcyBhcmUgaGVs
ZCBpbiB0aGUgZGF0YWdyYW07IHdoZW4KPiB0aGF0IGRhdGFncmFtIGlzIHJlY2VpdmVkLCB0aGUg
cmVmZXJlbmNlcyB3aWxsIGJlIGluc2VydGVkIGludG8gcmVjZXBpZW50J3MKPiBkZXNjcmlwdG9y
IHRhYmxlLiAgQXQgdGhhdCBwb2ludCB5b3UgYWdhaW4gaGF2ZSBkZXNjcmlwdG9ycyByZWZlcmlu
ZyB0bwo+IHRoYXQgZmlsZSwgY2FuIGRvIGFueSBJTyBvbiBpdCwgZXRjLgo+IAo+IFNvICJ0aGUg
c2V0IG9mIHByb2Nlc3NlcyB0aGF0IGhvbGQgYSBmaWxlIHJlZmVyZW5jZSB0byB0aGUgZG1hLWJ1
ZiIgaXMKPiAJKiBpbmhlcmVudGx5IHVuc3RhYmxlLCB1bmxlc3MgeW91IGFyZSB3aWxsaW5nIHRv
IGZyZWV6ZSBldmVyeQo+IHByb2Nlc3MgaW4gdGhlIHN5c3RlbSBleGNlcHQgZm9yIHRoZSBvbmUg
dHJ5aW5nIHRvIGZpbmQgdGhhdCBzZXQuCj4gCSogY2FuIHJlbWFpbiBlbXB0eSBmb3IgYW55IGFt
b3VudCBvZiB0aW1lIChob3Vycywgd2Vla3MsIHdoYXRldmVyKSwKPiBvbmx5IHRvIGdldCBub24t
ZW1wdHkgbGF0ZXIsIHdpdGggc3lzY2FsbHMgYWZmZWN0aW5nIHRoZSBvYmplY3QgaW4gcXVlc3Rp
b24KPiBkb25lIGFmdGVyd2FyZHMuCj4gCj4gU28uLi4gd2hhdCB3ZXJlIHlvdSBnb2luZyB0byBk
byB3aXRoIHRoYXQgc2V0IGlmIHlvdSBjb3VsZCBjYWxjdWxhdGUgaXQ/Cj4gSWYgaXQncyByZWFs
bHkgImhvdyBkbyB3ZSBkZWJ1ZyBhIGxlYWs/IiwgaXQncyBvbmUgdGhpbmc7IGluIHRoYXQgY2Fz
ZQo+IEkgd291bGQgc3VnZ2VzdCBrZWVwaW5nIHRyYWNrIG9mIGNyZWF0aW9uL2Rlc3RydWN0aW9u
IG9mIG9iamVjdHMgKG5vdAo+IGdhaW5pbmcvZHJvcHBpbmcgcmVmZXJlbmNlcyAtIGFjdHVhbCBj
b25zdHJ1Y3RvcnMgYW5kIGRlc3RydWN0b3JzKSB0bwo+IHNlZSB3aGF0IGdldHMgc3R1Y2sgYXJv
dW5kIGZvciB0b28gbG9uZyBhbmQgdXNlIGZ1c2VyKDEpIHRvIHRyeSBhbmQgbG9jYXRlCj4gdGhl
IGN1bHByaXRzIGlmIHlvdSBzZWUgdGhhdCBzb21ldGhpbmcgKndhcyogbGl2aW5nIGZvciB0b28g
bG9uZy4gICJUcnkiCj4gc2luY2UgdGhlIG9ubHkgcmVmZXJlbmNlIG1pZ2h0IGluZGVlZCBoYXZl
IGJlZW4gc3Rhc2hlZCBpbnRvIGFuIFNDTV9SSUdIVFMKPiBkYXRhZ3JhbSBzaXR0aW5nIGluIGEg
cXVldWUgb2Ygc29tZSBBRl9VTklYIHNvY2tldC4gIE5vdGUgdGhhdCAiZnVzZXIKPiBuZWVkcyBl
bGV2YXRlZCBwcml2ZWxlZ2VzIiBpcyBub3QgYSBzdHJvbmcgYXJndW1lbnQgLSB0aGUgYWJpbGl0
eSB0bwo+IGRvIHRoYXQgc29ydCBvZiB0cmFja2luZyBkb2VzIGltcGx5IGVsZXZhdGVkIHByaXZl
bGVnZXMgYW55d2F5LCBhbmQKPiBoYXZpbmcgYSByb290IHByb2Nlc3MgdGFraW5nIHJlcXVlc3Rz
IGFsb25nIHRoZSBsaW5lcyBvZiAiZ2ltbWUgdGhlCj4gbGlzdCBvZiBQSURzIHRoYXQgaGF2ZSBz
dWNoLWFuZC1zdWNoIGRtYV9idWYgaW4gdGhlaXIgZGVzY3JpcHRvciB0YWJsZSIKPiBpcyBub3Qg
bXVjaCBvZiBhbiBhdHRhY2sgc3VyZmFjZS4KPiAKPiBJZiB5b3Ugd2FudCB0byB1c2UgaXQgZm9y
IHNvbWV0aGluZyBlbHNlLCB5b3UnbGwgbmVlZCB0byBkZXNjcmliZSB0aGF0Cj4gaW50ZW5kZWQg
dXNlOyB0aGVyZSBtaWdodCBiZSBzYW5lIHdheXMgdG8gZG8gdGhhdCwgYnV0IGl0J3MgaGFyZCB0
bwo+IGNvbWUgdXAgd2l0aCBvbmUgd2l0aG91dCBrbm93aW5nIHdoYXQncyBiZWluZyBhdHRlbXB0
ZWQuLi4KCkhpIEFsLiBUaGFua3MgZm9yIHRoZSBndWlkYW5jZSBhbmQgZGV0YWlsZWQgZXhwbGFu
YXRpb24uIEl0IGFwcGVhcnMgd2hhdCB3ZQp3ZXJlIHRyeWluZyB0byBhY2NvbXBsaXNoIGhlcmUg
aXMgbm90IGZlYXNpYmxlLgoKVGhhbmtzLCBLYWxlc2gKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
