Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6141F511E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 11:27:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6253618EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2020 09:27:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9B27965F72; Wed, 10 Jun 2020 09:27:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20E3461726;
	Wed, 10 Jun 2020 09:27:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A1166013A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 09:27:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4632061726; Wed, 10 Jun 2020 09:27:14 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by lists.linaro.org (Postfix) with ESMTPS id AE90A6013A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 09:27:12 +0000 (UTC)
Received: from mail-qv1-f46.google.com ([209.85.219.46]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N4hBx-1ilAXw1cUJ-011m2o for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun
 2020 11:27:11 +0200
Received: by mail-qv1-f46.google.com with SMTP id g11so721319qvs.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2020 02:27:11 -0700 (PDT)
X-Gm-Message-State: AOAM5301oPZLk2Wq2sV9y2y/wnQWlwRRreI5fJy78qni5m23OJHiyzEN
 p4xNQOPC/KZrb1VjOZHXe2ckqqTZXLKkrpYB23A=
X-Google-Smtp-Source: ABdhPJxyWtH9LofwEdTYxXzu1ldBiowqiR86mkHaGO4qq++n7gDHop60yxQeWpkgQAbZwvP05ibJC+11h2MwvKlB+/o=
X-Received: by 2002:a05:6214:846:: with SMTP id
 dg6mr2067587qvb.210.1591781230032; 
 Wed, 10 Jun 2020 02:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200610083333.455-1-sumit.semwal@linaro.org>
In-Reply-To: <20200610083333.455-1-sumit.semwal@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 10 Jun 2020 11:26:53 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0PzmtWc1p-KgHzHhY+=gca0J8YsGD=ALGESWsgijQQ7w@mail.gmail.com>
Message-ID: <CAK8P3a0PzmtWc1p-KgHzHhY+=gca0J8YsGD=ALGESWsgijQQ7w@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Provags-ID: V03:K1:NOl4zhWGxb9KWDieJSkE6WZkTvTtphD/EseJIi+O1hGvdJXdv+T
 0UT3MZV+roVcrMDRTV5RWvKnxrH+5R8oyqHdF9NOyAErKd0a/ifUvOBZp+uyeZXEMYB82ZA
 zs2ZlZMogUI5IGxYdd5wLNhdVoB2DKh4JGfXaLSVtQowmJtX4eY3JQ+iVkZBuN1vwP00uTw
 lwKv7T+6aKwmNCLduX3Ag==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4h1SJ4gml2o=:pB/Up4Oyj01G+1fWYW/WCk
 A8CRmA1l8RsCgudFB+LLWSHRAcOQHlXxuH3wbCe4dRUwkioaoV/OdVAhFWPILSXoVhrfnJ3xZ
 z0cl1+kxCX26OvK+/RWBGJRSyvTIzzw6pe4pP6S4yf2a33sZCYul4QK2PENzUmBtKc5M/zh5e
 UiCt6y7Ud0YiuxSwVNPjWHnorUJKTXMJCqmYy2HQtrvkdU7QAO9pjEQyeBynLbCpCaolZsilk
 7dWL8Ax0JF41mFumCo2LsXtoCOD3dyCK7vEa/u4yMeCJ9A0v49xV0YUOqlFQY354RGM88dNK/
 JP/aLDhe60weWLvlEiJkA6apW+U472xJe06gbWut3rQ+fRiH06b6CwYQCN4CDSLt9qyUVLr7X
 j/hx5R0bCuRCJ5mYbT0IR0XYyVdiV273cY6ucvCQBvMBaW6Z1cPVlOhj1BDfgjDN1gsTpl1Tt
 ZZBLqACbfCrPrbyBF0DTaz8W0W3Qb6ErII7t38F1SWxZ03wrlVooON84DWYuWZRGCTIvMzfJk
 nUTV+jnOKnG3tDJ6yozDisGjcm2deiFWrC7cq/i95RSeL5F2nwDr/yDe25vmx8eYZ3Vp0yHKY
 k1lu7liQpdMq6cnGbq/W3uaYh8ufTqo0Km5vB6ke3ONJ6QKzfb3NY6ocvlClZYGZDQ2vTqjPI
 HpKxwjNpVDAxribLp+8IEnQV7T5YP380j8r7dhsA3ien3Zj34/eh6mRJRXQh2ARqrefXPkXhR
 OSVoQxEpKiTUCQjlBIiH7xBNx8agunJwDbRPsDGX6o7Ip8EIkbwZPwzVE6pRhhbHMTE6dkSBS
 hpBrml69jpxhj32DtbCdZa51ukkwtYGdFKMGIl979vnJV7NG/g=
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

T24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgMTA6MzMgQU0gU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBDaGFyYW4gVGVqYSByZXBvcnRlZCBhICd1c2UtYWZ0
ZXItZnJlZScgaW4gZG1hYnVmZnNfZG5hbWUgWzFdLCB3aGljaAo+IGhhcHBlbnMgaWYgdGhlIGRt
YV9idWZfcmVsZWFzZSgpIGlzIGNhbGxlZCB3aGlsZSB0aGUgdXNlcnNwYWNlIGlzCj4gYWNjZXNz
aW5nIHRoZSBkbWFfYnVmIHBzZXVkbyBmcydzIGRtYWJ1ZmZzX2RuYW1lKCkgaW4gYW5vdGhlciBw
cm9jZXNzLAo+IGFuZCBkbWFfYnVmX3JlbGVhc2UoKSByZWxlYXNlcyB0aGUgZG1hYnVmIG9iamVj
dCB3aGVuIHRoZSBsYXN0IHJlZmVyZW5jZQo+IHRvIHRoZSBzdHJ1Y3QgZmlsZSBnb2VzIGF3YXku
Cj4KPiBJIGRpc2N1c3NlZCB3aXRoIEFybmQgQmVyZ21hbm4sIGFuZCBoZSBzdWdnZXN0ZWQgdGhh
dCByYXRoZXIgdGhhbiB0eWluZwo+IHRoZSBkbWFfYnVmX3JlbGVhc2UoKSB0byB0aGUgZmlsZV9v
cGVyYXRpb25zJyByZWxlYXNlKCksIHdlIGNhbiB0aWUgaXQgdG8KPiB0aGUgZGVudHJ5X29wZXJh
dGlvbnMnIGRfcmVsZWFzZSgpLCB3aGljaCB3aWxsIGJlIGNhbGxlZCB3aGVuIHRoZSBsYXN0IHJl
Zgo+IHRvIHRoZSBkZW50cnkgaXMgcmVtb3ZlZC4KPgo+IFRoZSBwYXRoIGV4ZXJjaXNlZCBieSBf
X2ZwdXQoKSBjYWxscyBmX29wLT5yZWxlYXNlKCkgZmlyc3QsIGFuZCB0aGVuIGNhbGxzCj4gZHB1
dCwgd2hpY2ggZXZlbnR1YWxseSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KPgo+IEluIHRoZSAn
bm9ybWFsJyBjYXNlLCB3aGVuIG5vIHVzZXJzcGFjZSBhY2Nlc3MgaXMgaGFwcGVuaW5nIHZpYSBk
bWFfYnVmCj4gcHNldWRvIGZzLCB0aGVyZSBzaG91bGQgYmUgZXhhY3RseSBvbmUgZmQsIGZpbGUs
IGRlbnRyeSBhbmQgaW5vZGUsIHNvCj4gY2xvc2luZyB0aGUgZmQgd2lsbCBraWxsIG9mIGV2ZXJ5
dGhpbmcgcmlnaHQgYXdheS4KPgo+IEluIHRoZSBwcmVzZW50ZWQgY2FzZSwgdGhlIGRlbnRyeSdz
IGRfcmVsZWFzZSgpIHdpbGwgYmUgY2FsbGVkIG9ubHkgd2hlbgo+IHRoZSBkZW50cnkncyBsYXN0
IHJlZiBpcyByZWxlYXNlZC4KPgo+IFRoZXJlZm9yZSwgbGV0cyBtb3ZlIGRtYV9idWZfcmVsZWFz
ZSgpIGZyb20gZm9wcy0+cmVsZWFzZSgpIHRvCj4gZF9vcHMtPmRfcmVsZWFzZSgpLgo+Cj4gTWFu
eSB0aGFua3MgdG8gQXJuZCBmb3IgaGlzIEZTIGluc2lnaHRzIDopCj4KPiBbMV06IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMjM4Mjc4Lwo+Cj4gRml4ZXM6IGJiMmJi
OTAzMDQyNSAoImRtYS1idWY6IGFkZCBETUFfQlVGX1NFVF9OQU1FIGlvY3RscyIpCj4gUmVwb3J0
ZWQtYnk6IHN5emJvdCszNjQzYTE4ODM2YmNlNTU1YmZmNkBzeXprYWxsZXIuYXBwc3BvdG1haWwu
Y29tCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiBbNS4zK10KPiBDYzogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KPiBSZXBvcnRlZC1ieTogQ2hhcmFuIFRlamEgUmVkZHkgPGNo
YXJhbnRlQGNvZGVhdXJvcmEub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFN1bWl0IFNlbXdhbCA8c3Vt
aXQuc2Vtd2FsQGxpbmFyby5vcmc+CgpUaGUgcGF0Y2ggbG9va3MgY29ycmVjdCB0byBtZS4KClJl
dmlld2VkLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgoKT2J2aW91c2x5IHRoaXMg
c2hvdWxkIHN0aWxsIGJlIHZlcmlmaWVkIGFnYWluc3QgdGhlIG9yaWdpbmFsIHJlcG9ydCBpZiBw
b3NzaWJsZS4KCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxMyArKysrKysrLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMKPiBpbmRleCAwMWNlMTI1ZjhlOGQuLjkyYmE0YjZlZjNlNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYwo+IEBAIC01NCw4ICs1NCwxMSBAQCBzdGF0aWMgY2hhciAqZG1hYnVmZnNfZG5hbWUoc3Ry
dWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4pCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBkZW50cnktPmRfbmFtZS5uYW1lLCByZXQgPiAwID8gbmFtZSA6
ICIiKTsKPiAgfQo+Cj4gK3N0YXRpYyB2b2lkIGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZGVudHJ5
ICpkZW50cnkpOwo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZW50cnlfb3BlcmF0aW9ucyBk
bWFfYnVmX2RlbnRyeV9vcHMgPSB7Cj4gICAgICAgICAuZF9kbmFtZSA9IGRtYWJ1ZmZzX2RuYW1l
LAo+ICsgICAgICAgLmRfcmVsZWFzZSA9IGRtYV9idWZfcmVsZWFzZSwKPiAgfTsKCkknZCBzdWdn
ZXN0IHJlYXJyYW5naW5nIHRoZSBmaWxlIHRvIGF2b2lkIHRoZSBmb3J3YXJkIGRlY2xhcmF0aW9u
LCBldmVuCmlmIGl0IG1ha2VzIGl0IGEgbGl0dGxlIGhhcmRlciB0byByZXZpZXcgdGhlIGNoYW5n
ZSwgdGhlIHJlc3VsdGluZyBjb2RlCndpbGwgcmVtYWluIG9yZ2FuaXplZCBtb3JlIGxvZ2ljYWxs
eS4KCj4gIHN0YXRpYyBzdHJ1Y3QgdmZzbW91bnQgKmRtYV9idWZfbW50Owo+IEBAIC03NywxNCAr
ODAsMTQgQEAgc3RhdGljIHN0cnVjdCBmaWxlX3N5c3RlbV90eXBlIGRtYV9idWZfZnNfdHlwZSA9
IHsKPiAgICAgICAgIC5raWxsX3NiID0ga2lsbF9hbm9uX3N1cGVyLAo+ICB9Owo+Cj4gLXN0YXRp
YyBpbnQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpm
aWxlKQo+ICtzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5
KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOwo+Cj4gLSAgICAgICBpZiAo
IWlzX2RtYV9idWZfZmlsZShmaWxlKSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7
Cj4gKyAgICAgICBpZiAoZGVudHJ5LT5kX29wICE9ICZkbWFfYnVmX2RlbnRyeV9vcHMpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybjsKCkkgdGhpbmsgdGhlIGNoZWNrIGhlcmUgaXMgcmVkdW5kYW50
IGFuZCBpdCdzIGNsZWFyZXIgd2l0aG91dCBpdC4KCiAgICAgICAgICBBcm5kCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
