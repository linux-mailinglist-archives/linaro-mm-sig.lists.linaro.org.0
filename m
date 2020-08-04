Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58483248572
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:55:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B0F060665
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:55:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6B26360EFF; Tue, 18 Aug 2020 12:55:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FSL_HELO_FAKE,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7490066700;
	Tue, 18 Aug 2020 12:32:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07C1B618F1
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 15:44:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E044261992; Tue,  4 Aug 2020 15:44:56 +0000 (UTC)
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by lists.linaro.org (Postfix) with ESMTPS id 98EC3618F1
 for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Aug 2020 15:44:55 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id y8so14945334vsq.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Aug 2020 08:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H4JQaTkH18iHZhr5mRcUoCQ7w0Oz4NhHM6QKGzTo1bo=;
 b=tccKygYizDUe8TmlOsK2w6tFwd8rKMEFi8yPmCHfe4fBOGktZfUNgmHsAsqwKEJV2X
 rfLcs+21fSSx2McJWtRuO05zlSLXSogcRQzP/Fsldj9vQHexgEtkKGAmQUWEYmyl1S3w
 HyyF/hYE7W5b7EWrJxOLVVXnGpRREhNK6UZugI+/11a8cKJnjk0cMzogsxqpP8VB13Z3
 b58NH5p6geIuFpN578ahRPwJX/cYJVPLxB2gg6DB/L2cKFd8GknWjlTkMQlVYdXNzW/T
 ORP72xVbp3op3LQJ2hjvJBleW6KAcJDmui76RVEBnr1tvTq+8ftQF9ZbtohWSO+KAyyJ
 UTkA==
X-Gm-Message-State: AOAM531kFHsIOAonb+flLRVu9bWahOPa4guNFrOIwXqoyZ4AoP0rnG3t
 lejyx+kxwmFedvGDpGr50Xmjpw==
X-Google-Smtp-Source: ABdhPJyukknUS02GVsM5w7GzAW9AGOdf699gjZwqpksqLXYiV70ZhFCdPmPPK94v0vzmxZDb4/5nug==
X-Received: by 2002:a67:ef81:: with SMTP id r1mr8018212vsp.37.1596555894889;
 Tue, 04 Aug 2020 08:44:54 -0700 (PDT)
Received: from google.com (182.71.196.35.bc.googleusercontent.com.
 [35.196.71.182])
 by smtp.gmail.com with ESMTPSA id b138sm3212924vka.48.2020.08.04.08.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Aug 2020 08:44:54 -0700 (PDT)
Date: Tue, 4 Aug 2020 15:44:51 +0000
From: Kalesh Singh <kaleshsingh@google.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <20200804154451.GA948167@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-3-kaleshsingh@google.com>
 <20200803154125.GA23808@casper.infradead.org>
 <CAJuCfpFLikjaoopvt+vGN3W=m9auoK+DLQNgUf-xUbYfC=83Mw@mail.gmail.com>
 <20200803161230.GB23808@casper.infradead.org>
 <CAJuCfpGot1Lr+eS_AU30gqrrjc0aFWikxySe0667_GTJNsGTMw@mail.gmail.com>
 <20200803222831.GI1236603@ZenIV.linux.org.uk>
 <20200804010913.GA2096725@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804010913.GA2096725@ZenIV.linux.org.uk>
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

T24gVHVlLCBBdWcgMDQsIDIwMjAgYXQgMDI6MDk6MTNBTSArMDEwMCwgQWwgVmlybyB3cm90ZToK
PiBPbiBNb24sIEF1ZyAwMywgMjAyMCBhdCAxMToyODozMVBNICswMTAwLCBBbCBWaXJvIHdyb3Rl
Ogo+IAo+ID4gSU9XLCB3aGF0IHRoZSBoZWxsIGlzIHRoYXQgaG9ycm9yIGZvcj8gIFlvdSBkbyBy
ZWFsaXplLCBmb3IgZXhhbXBsZSwgdGhhdCB0aGVyZSdzCj4gPiBzdWNoIHRoaW5nIGFzIGR1cCgp
LCByaWdodD8gIEFuZCBkdXAyKCkgYXMgd2VsbC4gIEFuZCB3aGlsZSB3ZSBhcmUgYXQgaXQsIGhv
dwo+ID4gZG8geW91IGtlZXAgdHJhY2sgb2YgcmVtb3ZhbHMsIGNvbnNpZGVyaW5nIHRoZSBmYWN0
IHRoYXQgeW91IGNhbiBzdGljayBhIGZpbGUKPiA+IHJlZmVyZW5jZSBpbnRvIFNDTV9SSUdIVFMg
ZGF0YWdyYW0gc2VudCB0byB5b3Vyc2VsZiwgY2xvc2UgZGVzY3JpcHRvcnMgYW5kIGFuIGhvdXIK
PiA+IGxhdGVyIHBpY2sgdGhhdCBkYXRhZ3JhbSwgc3VkZGVubHkgZ2V0dGluZyBkZXNjcmlwdG9y
IGJhY2s/Cj4gPiAKPiA+IEJlc2lkZXMsICJJIGhhdmUgbm8gZGVzY3JpcHRvcnMgbGVmdCIgIT0g
IkkgY2FuJ3QgYmUgY3VycmVudGx5IHNpdHRpbmcgaW4gdGhlIG1pZGRsZQo+ID4gb2Ygc3lzY2Fs
bCBvbiB0aGF0IHN1Y2tlciI7IGNsb3NlKCkgZG9lcyAqTk9UKiB0ZXJtaW5hdGUgb25nb2luZyBv
cGVyYXRpb25zLgo+ID4gCj4gPiBZb3UgYXJlIGxvb2tpbmcgYXQgdGhlIGRyYXN0aWNhbGx5IHdy
b25nIGFic3RyYWN0aW9uIGxldmVsLiAgUGxlYXNlLCBkZXNjcmliZSB3aGF0Cj4gPiBpdCBpcyB0
aGF0IHlvdSBhcmUgdHJ5aW5nIHRvIGFjaGlldmUuCgpIaSBBbC4gVGhhbmsgeW91IGZvciB0aGUg
Y29tbWVudHMuIFVsdGltYXRlbHkgd2hhdCB3ZSBuZWVkIGlzIHRvIGlkZW50aWZ5IHByb2Nlc3Nl
cwp0aGF0IGhvbGQgYSBmaWxlIHJlZmVyZW5jZSB0byB0aGUgZG1hLWJ1Zi4gVW5mb3J0dW5hdGVs
eSB3ZSBjYW4ndCB1c2Ugb25seQpleHBsaWNpdCBkbWFfYnVmX2dldC9kbWFfYnVmX3B1dCB0byB0
cmFjayB0aGVtIGJlY2F1c2Ugd2hlbiBhbiBGRCBpcyBiZWluZyBzaGFyZWQKYmV0d2VlbiBwcm9j
ZXNzZXMgdGhlIGZpbGUgcmVmZXJlbmNlcyBhcmUgdGFrZW4gaW1wbGljaXRseS4KCkZvciBleGFt
cGxlLCBvbiB0aGUgc2VuZGVyIHNpZGU6CiAgIHVuaXhfZGdyYW1fc2VuZG1zZyAtPiBzZW5kX3Nj
bSAtPiBfX3NlbmRfc2NtIC0+IHNjbV9mcF9jb3B5IC0+IGZnZXRfcmF3CmFuZCBvbiB0aGUgcmVj
ZWl2ZXIgc2lkZToKICAgdW5peF9kZ3JhbV9yZWN2bXNnIC0+IHNjbV9yZWN2IC0+IHNjbV9kZXRh
Y2hfZmRzIC0+IF9fc2NtX2luc3RhbGxfZmQgLT4gZ2V0X2ZpbGUKCkkgdW5kZXJzdGFuZCBub3cg
dGhhdCBmZF9pbnN0YWxsIGlzIG5vdCBhbiBhcHByb3ByaWF0ZSBhYnN0cmFjdGlvbiBsZXZlbCB0
byB0cmFjayB0aGVzZS4KSXMgdGhlcmUgYSBtb3JlIGFwcHJvcHJpYXRlIGFsdGVybmF0aXZlIHdo
ZXJlIHdlIGNvdWxkIHVzZSB0byB0cmFjayB0aGVzZSBpbXBsaWNpdCBmaWxlCnJlZmVyZW5jZXM/
Cgo+IF9JRl8gaXQncyAid2hvIGtlZXBzIGEgcGFydGljdWxhcmx5IGxvbmctbGl2ZWQgc3Vja2Vy
IHBpbm5lZCIsIEkgd291bGQgc3VnZ2VzdAo+IGZ1c2VyKDEpIHJ1biB3aGVuIHlvdSBkZXRlY3Qg
dGhhdCBraW5kIG9mIGxvbmctbGl2ZWQgZG1hYnVmLiAgV2l0aCBldmVudHMgZ2VuZXJhdGVkCj4g
YnkgdGhlaXIgY29uc3RydWN0b3JzIGFuZCBkZXN0cnVjdG9ycywgYW5kIGRldGVjdGlvbiBvZiBs
b25nZXZpdHkgZG9uZSBiYXNlZCBvbgo+IHRoYXQuCj4gCj4gQnV0IHRoYXQncyBvbmx5IGEgc2Vt
aS1ibGluZCBndWVzcyBhdCB0aGUgdGhpbmdzIHlvdSBhcmUgdHJ5aW5nIHRvIGFjaGlldmU7IHBs
ZWFzZSwKPiBkZXNjcmliZSB3aGF0IGl0IHJlYWxseSBpcy4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
