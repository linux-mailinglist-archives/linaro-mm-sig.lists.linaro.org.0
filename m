Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E618B248544
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:50:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3500619B1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:50:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E17C9665AA; Tue, 18 Aug 2020 12:50:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	DKIM_ADSP_CUSTOM_MED,FSL_HELO_FAKE,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D5B16663B;
	Tue, 18 Aug 2020 12:32:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 34F0B60785
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 18:27:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1FA4C61627; Mon,  3 Aug 2020 18:27:01 +0000 (UTC)
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by lists.linaro.org (Postfix) with ESMTPS id 56B9660785
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 18:27:00 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id q13so12817947vsn.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 11:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kP+FsGwT7Ong6g9Z4afLp/eWEQkLU5G56u7wCNQ8PbY=;
 b=jCQdSd+Zae2B9JoFkqD3p4P8F+i9uh8TKDz4J2Xzw5vPavqu3xmYF6kTa+Fl+8ng6i
 VRnwQSe0qdkRYIOTG92VLdPXjBxu0CzK2iAttg3UnIGfKFS2zBDoyyOqMj7ibazxoZRy
 9lEndfpM/LB+ysr6yROLsoWD/ogpFBqrWNrEueKn9kId6/VPzT3Plx9p+4etMq7uNCKo
 sbMBDX+khuxcIyUV5GZ67lDMSZc4o9ouBVW7fwLWPtEa466Iy4yhANNaAaA14gswiDBx
 Buxoln1rajPD5DJAnOIONn+53Z5p4xbqkQOzvhgYfVPRAP1cMFSyBthUhP9QIpQiv6iK
 VJyQ==
X-Gm-Message-State: AOAM530IdVWV6UiKZtfaGfVDUspoPT1/i6FCKaIMiQjTHQ6FobRXr3lm
 O1t5QeJtqXtg4+SgXDPMijplSw==
X-Google-Smtp-Source: ABdhPJyU6H1ORSnyrbL6pgwSK5k0t4nkRLWrE1WiAHAQSrIO/HfrXXNuBwmpKt88ZgedOp1BLgmXJw==
X-Received: by 2002:a67:8084:: with SMTP id
 b126mr12585151vsd.163.1596479219744; 
 Mon, 03 Aug 2020 11:26:59 -0700 (PDT)
Received: from google.com (182.71.196.35.bc.googleusercontent.com.
 [35.196.71.182])
 by smtp.gmail.com with ESMTPSA id o3sm1766447vka.42.2020.08.03.11.26.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Aug 2020 11:26:59 -0700 (PDT)
Date: Mon, 3 Aug 2020 18:26:56 +0000
From: Kalesh Singh <kaleshsingh@google.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20200803182656.GA3230172@google.com>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-2-kaleshsingh@google.com>
 <20200803163429.GA15200@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803163429.GA15200@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 dri-devel@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 Ioannis Ilkos <ilkos@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] fs: Add fd_install file operation
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDU6MzQ6MjlQTSArMDEwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDI6NDc6MThQTSArMDAwMCwgS2Fs
ZXNoIFNpbmdoIHdyb3RlOgo+ID4gUHJvdmlkZXMgYSBwZXIgcHJvY2VzcyBob29rIGZvciB0aGUg
YWNxdWlzaXRpb24gb2YgZmlsZSBkZXNjcmlwdG9ycywKPiA+IGRlc3BpdGUgdGhlIG1ldGhvZCB1
c2VkIHRvIG9idGFpbiB0aGUgZGVzY3JpcHRvci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogS2Fs
ZXNoIFNpbmdoIDxrYWxlc2hzaW5naEBnb29nbGUuY29tPgo+IAo+IEkgc3Ryb25nbHkgZGlzYWdy
ZWUgd2l0aCB0aGlzLiAgVGhlIGZpbGUgb3BlcmF0aW9uIGhhcyBubyBidXNpbmVzcwo+IGhvb2tp
bmcgaW50byBpbnN0YWxsaW5nIHRoZSBmZC4KSGkgQ2hyaXN0b3BoLiBJIGFtIGV4cGxvcmluZyB0
aGUgYWx0ZXJuYXRpdmUgc3VnZ2VzdGVkIGJ5IE1hdHRoZXcgaW4KUGF0Y2ggMi8yLiBUaGFua3Mg
OikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
