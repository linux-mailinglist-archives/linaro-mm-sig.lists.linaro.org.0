Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A6999310D0B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 16:14:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCB4766759
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 15:14:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B266F66760; Fri,  5 Feb 2021 15:14:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60DC36600B;
	Fri,  5 Feb 2021 15:14:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07E2B6602A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 15:13:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EC2EF61726; Fri,  5 Feb 2021 15:13:58 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by lists.linaro.org (Postfix) with ESMTPS id F0DDB61726
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 15:13:55 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id t29so4498890pfg.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Feb 2021 07:13:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uaau4sgQ9hT4TilyNvussNtYWDpCQq4C5pX2PL2MkbA=;
 b=l7n7IeubwW2O2mv+6ZwmgEZslzYJTdBKsNaW340nT6hqrUK1p163OiUaUKw7qTucFa
 D4fAWsm/9Bueays2R6/RKsE53NaOanRrn0HkZHLD348rvdEj7Gqu3kp9qMMJrgdQ6Pm0
 BpspabhnFFMBHDwWi/bDPp4d/QTZX6GqkE21di1MHLzwKmXXrIYTBLKLa8mEL8XYVhq3
 i/caEuOHizXSAtEfqyO9B1aCXecM2hunpkvABBA9GuDERTIgxe4nPxE+zOtrr/CrZe7h
 sFTce7C5J98S8nQEAkyhJ/B5BHR8BhgjYMvz1zL4X66bRoId1rUm4CmpYhL4YVwMME4+
 Ym/A==
X-Gm-Message-State: AOAM5314k/PUc+WSXX9Hlrc40ot+X/IB5vW2ebCqfDe/IrMHLFgEVjg1
 Oq/ZJYQ7ANkkbxuzFWavzx6Hwh/aafsVFOS+h55XqA==
X-Google-Smtp-Source: ABdhPJw/KUgUzSu9HyWsw7w094KKGV8UazdOBjJhfXTEooNN4RSJLHuY9UsurqCqtD67VvrC4YI+d1km2qWrSXarE8o=
X-Received: by 2002:a63:5309:: with SMTP id h9mr4691610pgb.19.1612538034909;
 Fri, 05 Feb 2021 07:13:54 -0800 (PST)
MIME-Version: 1.0
References: <20210205022328.481524-1-kaleshsingh@google.com>
 <20210205022328.481524-2-kaleshsingh@google.com>
 <df97ba85-2291-487a-8af0-84398f9e8188@amd.com>
In-Reply-To: <df97ba85-2291-487a-8af0-84398f9e8188@amd.com>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Fri, 5 Feb 2021 10:13:43 -0500
Message-ID: <CAC_TJvfZ4G8oL1c6kgBVvmjeXYPpf3ziRp+BEWqiEKYK1mhbDg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Michal Hocko <mhocko@suse.com>, Anand K Mistry <amistry@google.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 NeilBrown <neilb@suse.de>, DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jeffrey Vander Stoep <jeffv@google.com>,
 "Cc: Android Kernel" <kernel-team@android.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Bernd Edlinger <bernd.edlinger@hotmail.de>,
 Suren Baghdasaryan <surenb@google.com>,
 Alexey Gladkov <gladkov.alexey@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3 2/2] dmabuf: Add dmabuf inode number
	to /proc/*/fdinfo
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

T24gRnJpLCBGZWIgNSwgMjAyMSBhdCAyOjU2IEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAwNS4wMi4yMSB1bSAwMzoyMyBzY2hyaWVi
IEthbGVzaCBTaW5naDoKPiA+IElmIGEgRkQgcmVmZXJzIHRvIGEgRE1BIGJ1ZmZlciBhZGQgdGhl
IERNQSBidWZmZXIgaW5vZGUgbnVtYmVyIHRvCj4gPiAvcHJvYy88cGlkPi9mZGluZm8vPEZEPiBh
bmQgL3Byb2MvPHBpZD4vdGFzay88dGlkPi9mZGluZG8vPEZEPi4KPiA+Cj4gPiBUaGUgZG1hYnVm
IGlub2RlIG51bWJlciBhbGxvd3MgdXNlcnNwYWNlIHRvIHVuaXF1ZWx5IGlkZW50aWZ5IHRoZSBi
dWZmZXIKPiA+IGFuZCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9uIC9wcm9jLzxwaWQ+L2ZkLyogd2hl
biBhY2NvdW50aW5nIHBlci1wcm9jZXNzCj4gPiBETUEgYnVmZmVyIHNpemVzLgo+Cj4gQlRXOiBX
aHkgZG8gd2UgbWFrZSB0aGlzIERNQS1idWYgc3BlY2lmaWM/IENvdWxkbid0IHdlIGFsd2F5cyBw
cmludCB0aGUKPiBpbm9kZSBudW1iZXIgZm9yIGFsbCBmZHM/CgpHb29kIHBvaW50LiBXZSBjYW4g
bWFrZSB0aGlzIGEgY29tbW9uIGZpZWxkIGluc3RlYWQgb2YgRE1BIGJ1ZgpzcGVjaWZpYy4gSSB3
aWxsIHVwZGF0ZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoKVGhhbmtzLApLYWxlc2gKPgo+IFJlZ2Fy
ZHMsCj4gQ2hyaXN0aWFuLgo+Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogS2FsZXNoIFNpbmdoIDxr
YWxlc2hzaW5naEBnb29nbGUuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIHYzOgo+ID4gICAg
LSBBZGQgZG9jdW1lbnRhdGlvbiBpbiBwcm9jLnJzdAo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ICAg
IC0gVXBkYXRlIHBhdGNoIGRlc2NyaXB0aW9uCj4gPgo+ID4gICBEb2N1bWVudGF0aW9uL2ZpbGVz
eXN0ZW1zL3Byb2MucnN0IHwgMTcgKysrKysrKysrKysrKysrKysKPiA+ICAgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyAgICAgICAgICB8ICAxICsKPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3Rl
bXMvcHJvYy5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL3Byb2MucnN0Cj4gPiBpbmRl
eCAyZmE2OWY3MTBlMmEuLmZkZDM4Njc2ZjU3ZiAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRp
b24vZmlsZXN5c3RlbXMvcHJvYy5yc3QKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZmlsZXN5c3Rl
bXMvcHJvYy5yc3QKPiA+IEBAIC0yMDMxLDYgKzIwMzEsMjMgQEAgZGV0YWlsc10uICdpdF92YWx1
ZScgaXMgcmVtYWluaW5nIHRpbWUgdW50aWwgdGhlIHRpbWVyIGV4cGlyYXRpb24uCj4gPiAgIHdp
dGggVElNRVJfQUJTVElNRSBvcHRpb24gd2hpY2ggd2lsbCBiZSBzaG93biBpbiAnc2V0dGltZSBm
bGFncycsIGJ1dCAnaXRfdmFsdWUnCj4gPiAgIHN0aWxsIGV4aGliaXRzIHRpbWVyJ3MgcmVtYWlu
aW5nIHRpbWUuCj4gPgo+ID4gK0RNQSBCdWZmZXIgZmlsZXMKPiA+ICt+fn5+fn5+fn5+fn5+fn5+
Cj4gPiArCj4gPiArOjoKPiA+ICsKPiA+ICsgICAgIHBvczogICAgMAo+ID4gKyAgICAgZmxhZ3M6
ICAwNDAwMgo+ID4gKyAgICAgbW50X2lkOiA5Cj4gPiArICAgICBkbWFidWZfaW5vZGVfbm86IDYz
MTA3Cj4gPiArICAgICBzaXplOiAgIDMyNzY4Cj4gPiArICAgICBjb3VudDogIDIKPiA+ICsgICAg
IGV4cF9uYW1lOiAgc3lzdGVtLWhlYXAKPiA+ICsKPiA+ICt3aGVyZSAnZG1hYnVmX2lub2RlX25v
JyBpcyB0aGUgdW5pcXVlIGlub2RlIG51bWJlciBvZiB0aGUgRE1BIGJ1ZmZlciBmaWxlLgo+ID4g
KydzaXplJyBpcyB0aGUgc2l6ZSBvZiB0aGUgRE1BIGJ1ZmZlciBpbiBieXRlcy4gJ2NvdW50JyBp
cyB0aGUgZmlsZSBjb3VudCBvZgo+ID4gK3RoZSBETUEgYnVmZmVyIGZpbGUuICdleHBfbmFtZScg
aXMgdGhlIG5hbWUgb2YgdGhlIERNQSBidWZmZXIgZXhwb3J0ZXIuCj4gPiArCj4gPiAgIDMuOSAv
cHJvYy88cGlkPi9tYXBfZmlsZXMgLSBJbmZvcm1hdGlvbiBhYm91dCBtZW1vcnkgbWFwcGVkIGZp
bGVzCj4gPiAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gICBUaGlzIGRpcmVjdG9yeSBjb250YWlucyBzeW1i
b2xpYyBsaW5rcyB3aGljaCByZXByZXNlbnQgbWVtb3J5IG1hcHBlZCBmaWxlcwo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jCj4gPiBpbmRleCA5YWQ2Mzk3YWFhOTcuLmQ4NjkwOTllZGU4MyAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKPiA+IEBAIC00MTQsNiArNDE0LDcgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9zaG93X2Zk
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBmaWxlICpmaWxlKQo+ID4gICB7Cj4gPiAg
ICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gZmlsZS0+cHJpdmF0ZV9kYXRhOwo+ID4KPiA+
ICsgICAgIHNlcV9wcmludGYobSwgImRtYWJ1Zl9pbm9kZV9ubzpcdCVsdVxuIiwgZmlsZV9pbm9k
ZShmaWxlKS0+aV9pbm8pOwo+ID4gICAgICAgc2VxX3ByaW50ZihtLCAic2l6ZTpcdCV6dVxuIiwg
ZG1hYnVmLT5zaXplKTsKPiA+ICAgICAgIC8qIERvbid0IGNvdW50IHRoZSB0ZW1wb3JhcnkgcmVm
ZXJlbmNlIHRha2VuIGluc2lkZSBwcm9jZnMgc2VxX3Nob3cgKi8KPiA+ICAgICAgIHNlcV9wcmlu
dGYobSwgImNvdW50Olx0JWxkXG4iLCBmaWxlX2NvdW50KGRtYWJ1Zi0+ZmlsZSkgLSAxKTsKPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
