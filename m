Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DB22E945B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jan 2021 12:53:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C103F66724
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Jan 2021 11:53:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B0E9C66723; Mon,  4 Jan 2021 11:53:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E7CD66715;
	Mon,  4 Jan 2021 11:52:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 031D866628
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jan 2021 11:52:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EC06C66715; Mon,  4 Jan 2021 11:52:48 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 72B3D66628
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Jan 2021 11:52:47 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id cw27so27047363edb.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Jan 2021 03:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=DfLO+6tfprck9fHLo23dyUoOOWOsjqNfG6uNyohQRMk=;
 b=LNX9LiCbfHpNdchUk0Vj6CLX1XtzjmiuOmK483ALP22Qykjc7dQKbwMBA6nOEgdHpo
 xPS+VNDB+Ovr13xLf2SGsW55NiqQYBgeSfbRWR5TKoCW8N+f8PEjVEn8H0AxNMDsSpcf
 NZKNelkm8brx/MAegRHEMfEBXc7g52wX7jyhYIViNUaEmeZI9cHFwES9SDDQsLrQvFK1
 AemFZjQKiIo03V5IeSNr5WE3bd/HxxB+8gPiLA7TgRbFD2fHPbk6Wiwt8ZQdhItzTxfP
 3Pe9jtmImbkFSb6wLHjTiIhF0252wvfKzKr6lBw26cuSPLpUm0sjLdwfp03V+Ry6XHhn
 95AQ==
X-Gm-Message-State: AOAM5305UgR9IMinBKjAtC6CcuLRhVX68Q9HQfI2LMlsZllKgXUJbJiC
 WBGHQBycDkJvIy7gsTLluM8=
X-Google-Smtp-Source: ABdhPJyCRra5INYJCm1uVFgnKV1GOhoChn4TLjK7zpSbjFHjFmpX5DhL8lNI7qBck/pTS8zBsZWutQ==
X-Received: by 2002:aa7:c886:: with SMTP id p6mr70719840eds.207.1609761166651; 
 Mon, 04 Jan 2021 03:52:46 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id c25sm23342778ejx.39.2021.01.04.03.52.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jan 2021 03:52:45 -0800 (PST)
To: Charan Teja Reddy <charante@codeaurora.org>, sumit.semwal@linaro.org,
 christian.koenig@amd.com, arnd@arndb.de, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <1609760177-6083-1-git-send-email-charante@codeaurora.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0dcbf9c5-3c28-0f57-0069-3fe5dc3aa7f6@gmail.com>
Date: Mon, 4 Jan 2021 12:52:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1609760177-6083-1-git-send-email-charante@codeaurora.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: fix use-after-free of dmabuf's
 file->f_inode
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDQuMDEuMjEgdW0gMTI6MzYgc2NocmllYiBDaGFyYW4gVGVqYSBSZWRkeToKPiBJdCBpcyBv
YnNlcnZlZCAndXNlLWFmdGVyLWZyZWUnIG9uIHRoZSBkbWFidWYncyBmaWxlLT5mX2lub2RlIHdp
dGggdGhlCj4gcmFjZSBiZXR3ZWVuIGNsb3NpbmcgdGhlIGRtYWJ1ZiBmaWxlIGFuZCByZWFkaW5n
IHRoZSBkbWFidWYncyBkZWJ1Zwo+IGluZm8uCj4KPiBDb25zaWRlciB0aGUgYmVsb3cgc2NlbmFy
aW8gd2hlcmUgUDEgaXMgY2xvc2luZyB0aGUgZG1hX2J1ZiBmaWxlCj4gYW5kIFAyIGlzIHJlYWRp
bmcgdGhlIGRtYV9idWYncyBkZWJ1ZyBpbmZvIGluIHRoZSBzeXN0ZW06Cj4KPiBQMQkJCQkJCVAy
Cj4gCQkJCQlkbWFfYnVmX2RlYnVnX3Nob3coKQo+IGRtYV9idWZfcHV0KCkKPiAgICBfX2ZwdXQo
KQo+ICAgICAgZmlsZS0+Zl9vcC0+cmVsZWFzZSgpCj4gICAgICBkcHV0KCkKPiAgICAgIC4uLi4K
PiAgICAgICAgZGVudHJ5X3VubGlua19pbm9kZSgpCj4gICAgICAgICAgaXB1dChkZW50cnktPmRf
aW5vZGUpCj4gICAgICAgICAgKHdoZXJlIHRoZSBpbm9kZSBpcyBmcmVlZCkKPiAJCQkJCW11dGV4
X2xvY2soJmRiX2xpc3QubG9jaykKPiAJCQkJCXJlYWQgJ2RtYV9idWYtPmZpbGUtPmZfaW5vZGUn
Cj4gCQkJCQkodGhlIHNhbWUgaW5vZGUgaXMgZnJlZWQgYnkgUDEpCj4gCQkJCQltdXRleF91bmxv
Y2soJmRiX2xpc3QubG9jaykKPiAgICAgICAgZGVudHJ5LT5kX29wLT5kX3JlbGVhc2UoKS0tPgo+
ICAgICAgICAgIGRtYV9idWZfcmVsZWFzZSgpCj4gICAgICAgICAgICAuLi4uLgo+ICAgICAgICAg
ICAgbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKQo+ICAgICAgICAgICAgcmVtb3ZlcyB0aGUgZG1h
YnVmIGZyb20gdGhlIGxpc3QKPiAgICAgICAgICAgIG11dGV4X3VubG9jaygmZGJfbGlzdC5sb2Nr
KQo+Cj4gSW4gdGhlIGFib3ZlIHNjZW5hcmlvLCB3aGVuIGRtYV9idWZfcHV0KCkgaXMgY2FsbGVk
IG9uIGEgZG1hX2J1ZiwgaXQKPiBmaXJzdCBmcmVlcyB0aGUgZG1hX2J1ZidzIGZpbGUtPmZfaW5v
ZGUoPWRlbnRyeS0+ZF9pbm9kZSkgYW5kIHRoZW4KPiByZW1vdmVzIHRoaXMgZG1hX2J1ZiBmcm9t
IHRoZSBzeXN0ZW0gZGJfbGlzdC4gSW4gYmV0d2VlbiBQMiB0cmF2ZXJzaW5nCj4gdGhlIGRiX2xp
c3QgdHJpZXMgdG8gYWNjZXNzIHRoaXMgZG1hX2J1ZidzIGZpbGUtPmZfaW5vZGUgdGhhdCB3YXMg
ZnJlZWQKPiBieSBQMSB3aGljaCBpcyBhIHVzZS1hZnRlci1mcmVlIGNhc2UuCj4KPiBTaW5jZSwg
X19mcHV0KCkgY2FsbHMgZl9vcC0+cmVsZWFzZSBmaXJzdCBhbmQgdGhlbiBsYXRlciBjYWxscyB0
aGUKPiBkX29wLT5kX3JlbGVhc2UsIG1vdmUgdGhlIGRtYV9idWYncyBkYl9saXN0IHJlbW92YWwg
ZnJvbSBkX3JlbGVhc2UoKSB0bwo+IGZfb3AtPnJlbGVhc2UoKS4gVGhpcyBlbnN1cmVzIHRoYXQg
ZG1hX2J1ZidzIGZpbGUtPmZfaW5vZGUgaXMgbm90Cj4gYWNjZXNzZWQgYWZ0ZXIgaXQgaXMgcmVs
ZWFzZWQuCj4KPiBGaXhlczogNGFiNTljM2M2MzhjICgiZG1hLWJ1ZjogTW92ZSBkbWFfYnVmX3Jl
bGVhc2UoKSBmcm9tIGZvcHMgdG8gZGVudHJ5X29wcyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hhcmFu
IFRlamEgUmVkZHkgPGNoYXJhbnRlQGNvZGVhdXJvcmEub3JnPgoKTm90IGFuIGV4cGVydCBvbiB0
aGUgZGVidWdmcyBzdHVmZiBpbiBETUEtYnVmLCBidXQgdGhlIGV4cGxhbmF0aW9uIApzb3VuZHMg
cGVyZmVjdGx5IGNvcnJlY3QgdG8gbWUuCgpBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgfCAyMSArKysrKysrKysrKysrKysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXggMGViODBjMS4u
YTE0ZGNiYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC03NiwxMCArNzYsNiBAQCBzdGF0aWMgdm9p
ZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQo+ICAgCj4gICAJZG1hYnVm
LT5vcHMtPnJlbGVhc2UoZG1hYnVmKTsKPiAgIAo+IC0JbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2Nr
KTsKPiAtCWxpc3RfZGVsKCZkbWFidWYtPmxpc3Rfbm9kZSk7Cj4gLQltdXRleF91bmxvY2soJmRi
X2xpc3QubG9jayk7Cj4gLQo+ICAgCWlmIChkbWFidWYtPnJlc3YgPT0gKHN0cnVjdCBkbWFfcmVz
diAqKSZkbWFidWZbMV0pCj4gICAJCWRtYV9yZXN2X2ZpbmkoZG1hYnVmLT5yZXN2KTsKPiAgIAo+
IEBAIC04OCw2ICs4NCwyMiBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRl
bnRyeSAqZGVudHJ5KQo+ICAgCWtmcmVlKGRtYWJ1Zik7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlu
dCBkbWFfYnVmX2ZpbGVfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAq
ZmlsZSkKPiArewo+ICsJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKPiArCj4gKwlpZiAoIWlzX2Rt
YV9idWZfZmlsZShmaWxlKSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlkbWFidWYgPSBm
aWxlLT5wcml2YXRlX2RhdGE7Cj4gKwo+ICsJbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKTsKPiAr
CWxpc3RfZGVsKCZkbWFidWYtPmxpc3Rfbm9kZSk7Cj4gKwltdXRleF91bmxvY2soJmRiX2xpc3Qu
bG9jayk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0
IGRlbnRyeV9vcGVyYXRpb25zIGRtYV9idWZfZGVudHJ5X29wcyA9IHsKPiAgIAkuZF9kbmFtZSA9
IGRtYWJ1ZmZzX2RuYW1lLAo+ICAgCS5kX3JlbGVhc2UgPSBkbWFfYnVmX3JlbGVhc2UsCj4gQEAg
LTQxMyw2ICs0MjUsNyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Nob3dfZmRpbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGRtYV9idWZfZm9wcyA9IHsKPiArCS5yZWxlYXNlCT0g
ZG1hX2J1Zl9maWxlX3JlbGVhc2UsCj4gICAJLm1tYXAJCT0gZG1hX2J1Zl9tbWFwX2ludGVybmFs
LAo+ICAgCS5sbHNlZWsJCT0gZG1hX2J1Zl9sbHNlZWssCj4gICAJLnBvbGwJCT0gZG1hX2J1Zl9w
b2xsLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
