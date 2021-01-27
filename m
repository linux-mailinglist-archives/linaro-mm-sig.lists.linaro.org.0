Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9B6306553
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 21:43:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37CDF6674E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Jan 2021 20:43:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2B10666760; Wed, 27 Jan 2021 20:43:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 742266675C;
	Wed, 27 Jan 2021 20:42:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 460D06674E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:42:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32ED06675C; Wed, 27 Jan 2021 20:42:51 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by lists.linaro.org (Postfix) with ESMTPS id 094F36674E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 20:42:50 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id u15so1725481plf.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Jan 2021 12:42:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=heAqkYphZYwX3mYVMDdP10R2l2TFo2HmDmbz1DiFkNE=;
 b=A+LMHxnvfraePIAl3uonanxjc9NoUbkVARPtwANiRCjm9qTQPalh8/D4ihsjRyyaKn
 0g5T3r4OQu5z6vHuQU6uXBtk9dIP16UBjPXhHgsUIfuiE1xRLQrJitOTAw2piItvt89D
 mvbo5pGy1dfDU/PLMfWjNywLzvHkjvkuf1ZseLdTqnhCcfdk7LvCrdEwjjIT/A6uOP1R
 rvCPTVMHD83y/qU5T4vJbWaEGOzZgFOut8Uy3rg9U2WEoIrK5qQKpAqhd8dcF5CvRxWF
 Ic02kU0qSpNWxyVaLJzibimg3XJKJRTBqRjgIAmR41r2c6EpLGqjoh2foVurt0O+f6R3
 KN0A==
X-Gm-Message-State: AOAM533T/ZxEbhXSATzEbO5dZHXcKJf2CkZgSf+qDp1VFPXgfATz/Dzr
 bpzUfjNwoZa6+ketezrCmno=
X-Google-Smtp-Source: ABdhPJyrDUsN/Czs9FxNo3YQSGdUkHSsN4MG+RN/LXd3icOH8HO4d6Aya9e6WjnHk3Ic8QmrVWjzeQ==
X-Received: by 2002:a17:902:edcd:b029:df:d2b1:ecf0 with SMTP id
 q13-20020a170902edcdb02900dfd2b1ecf0mr13184394plk.15.1611780169223; 
 Wed, 27 Jan 2021 12:42:49 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id a72sm3457344pfa.126.2021.01.27.12.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 12:42:47 -0800 (PST)
Date: Wed, 27 Jan 2021 12:42:45 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBHQRY8kw8/wjFK8@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-3-minchan@kernel.org>
 <20210125131200.GG827@dhcp22.suse.cz> <YA8dEFSrHBb9muFr@google.com>
 <20210126074449.GA827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126074449.GA827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 2/4] mm: failfast mode with
 __GFP_NORETRY in alloc_contig_range
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6NDQ6NDlBTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIE1vbiAyNS0wMS0yMSAxMTozMzozNiwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBP
biBNb24sIEphbiAyNSwgMjAyMSBhdCAwMjoxMjowMFBNICswMTAwLCBNaWNoYWwgSG9ja28gd3Jv
dGU6Cj4gPiA+IE9uIFRodSAyMS0wMS0yMSAwOTo1NTowMCwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
PiA+ID4gQ29udGlndW91cyBtZW1vcnkgYWxsb2NhdGlvbiBjYW4gYmUgc3RhbGxlZCBkdWUgdG8g
d2FpdGluZwo+ID4gPiA+IG9uIHBhZ2Ugd3JpdGViYWNrIGFuZC9vciBwYWdlIGxvY2sgd2hpY2gg
Y2F1c2VzIHVucHJlZGljdGFibGUKPiA+ID4gPiBkZWxheS4gSXQncyBhIHVuYXZvaWRhYmxlIGNv
c3QgZm9yIHRoZSByZXF1ZXN0b3IgdG8gZ2V0ICpiaWcqCj4gPiA+ID4gY29udGlndW91cyBtZW1v
cnkgYnV0IGl0J3MgZXhwZW5zaXZlIGZvciAqc21hbGwqIGNvbnRpZ3VvdXMKPiA+ID4gPiBtZW1v
cnkoZS5nLiwgb3JkZXItNCkgYmVjYXVzZSBjYWxsZXIgY291bGQgcmV0cnkgdGhlIHJlcXVlc3QK
PiA+ID4gPiBpbiBkaWZmZXJlbnQgcmFuZ2Ugd2hlcmUgd291bGQgaGF2ZSBlYXN5IG1pZ3JhdGFi
bGUgcGFnZXMKPiA+ID4gPiB3aXRob3V0IHN0YWxsaW5nLgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMg
cGF0Y2ggaW50cm9kdWNlIF9fR0ZQX05PUkVUUlkgYXMgY29tcGFjdGlvbiBnZnBfbWFzayBpbgo+
ID4gPiA+IGFsbG9jX2NvbnRpZ19yYW5nZSBzbyBpdCB3aWxsIGZhaWwgZmFzdCB3aXRob3V0IGJs
b2NraW5nCj4gPiA+ID4gd2hlbiBpdCBlbmNvdW50ZXJzIHBhZ2VzIG5lZWRlZCB3YWl0aW5nLgo+
ID4gPiAKPiA+ID4gSSBhbSBub3QgYWdhaW5zdCBjb250cm9saW5nIGhvdyBoYXJkIHRoaXMgYWxs
b2NhdG9yIHRyaWVzIHdpdGggZ2ZwIG1hc2sKPiA+ID4gYnV0IHRoaXMgY2hhbmdlbG9nIGlzIHJh
dGhlciB2b2lkIG9uIGFueSBkYXRhIGFuZCBhbnkgdXNlci4KPiA+ID4gCj4gPiA+IEl0IGlzIGFs
c28gcmF0aGVyIGR1YmlvdXMgdG8gaGF2ZSByZXRyaWVzIHdoZW4gdGhlbiBjYWxsZXIgc2F5cyB0
byBub3QKPiA+ID4gcmV0cnkuCj4gPiAKPiA+IFNpbmNlIG1heF90cmllcyBpcyAxIHdpdGggKyt0
cmllcywgaXQgc2hvdWxkbid0IHJldHJ5Lgo+IAo+IE9LLCBJIGhhdmUgbWlzc2VkIHRoYXQuIFRo
aXMgaXMgYSB0cmlja3kgY29kZS4gQVNZTkMgbW9kZSBzaG91bGQgYmUKPiBjb21wbGV0ZWx5IG9y
dGhvZ29uYWwgdG8gdGhlIHJldHJpZXMgY291bnQuIFRob3NlIGFyZSBkaWZmZXJlbnQgdGhpbmdz
Lgo+IFBhZ2UgYWxsb2NhdG9yIGRvZXMgYW4gZXhwbGljaXQgYmFpbCBvdXQgYmFzZWQgb24gX19H
RlBfTk9SRVRSWS4gWW91Cj4gc2hvdWxkIGJlIGRvaW5nIHRoZSBzYW1lLgoKQmVmb3JlIHNlbmRp
bmcgbmV4dCByZXZpc2lvbiwgbGV0IG1lIGNoZWNrIHRoaXMgcGFydCBhZ2Fpbi4KCkkgd2FudCB0
byB1c2UgX19HRlBfTk9SRVRSWSB0byBpbmRpY2F0ZSAib3Bwb3J0dW5pc3RpYy1lYXN5LXRvLWZh
aWwgYXR0ZW1wdCIKYW5kIEkgd2FudCB0byB1c2UgQVNZTkMgbWlncmF0ZV9tb2RlIHRvIGhlbHAg
dGhlIGdvYWwuCgpEbyB5b3Ugc2VlIHRoZSBwcm9ibGVtPwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
