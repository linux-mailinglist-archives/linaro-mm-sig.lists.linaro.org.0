Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 588FC1ABD5B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 11:53:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06FB460F06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 09:53:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F09CC65FCD; Thu, 16 Apr 2020 09:53:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55B1C619B0;
	Thu, 16 Apr 2020 09:53:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F46460F06
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 09:52:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3BF6A619B0; Thu, 16 Apr 2020 09:52:59 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by lists.linaro.org (Postfix) with ESMTPS id 3DA2660F06
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 09:52:58 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03G9mLw6079677;
 Thu, 16 Apr 2020 09:52:30 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30e0aa5x1b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Apr 2020 09:52:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03G9l5h3106098;
 Thu, 16 Apr 2020 09:50:30 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 30ememjd48-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Apr 2020 09:50:30 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03G9oAKA028024;
 Thu, 16 Apr 2020 09:50:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 Apr 2020 02:50:10 -0700
Date: Thu, 16 Apr 2020 12:49:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>
Message-ID: <20200416094955.GM1163@kadam>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414141849.55654-1-orjan.eide@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9592
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004160067
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9592
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 impostorscore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004160067
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, nd@arm.com,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDQ6MTg6NDdQTSArMDIwMCwgw5hyamFuIEVpZGUgd3Jv
dGU6Cj4gQEAgLTIzOCw2ICsyNDIsMTAgQEAgc3RhdGljIHZvaWQgaW9uX3VubWFwX2RtYV9idWYo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKPiAgCQkJICAgICAgc3RydWN0
IHNnX3RhYmxlICp0YWJsZSwKPiAgCQkJICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGly
ZWN0aW9uKQo+ICB7Cj4gKwlzdHJ1Y3QgaW9uX2RtYV9idWZfYXR0YWNobWVudCAqYSA9IGF0dGFj
aG1lbnQtPnByaXY7Cj4gKwo+ICsJYS0+bWFwcGVkID0gZmFsc2U7CgpQb3NzaWJseSBhIHN0dXBp
ZCBxdWVzdGlvbiBidXQgaGVyZSB3ZSdyZSBub3QgaG9sZGluZyBhIGxvY2suICBJcwpjb25jdXJy
ZW5jeSBhbiBpc3N1ZT8KCj4gKwo+ICAJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFi
bGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOwo+ICB9Cj4gIAo+IEBAIC0yOTcsNiAr
MzA1LDggQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsCj4gIAo+ICAJbXV0ZXhfbG9jaygmYnVmZmVyLT5sb2NrKTsKPiAgCWxp
c3RfZm9yX2VhY2hfZW50cnkoYSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsKPiArCQlp
ZiAoIWEtPm1hcHBlZCkKPiArCQkJY29udGludWU7Cj4gIAkJZG1hX3N5bmNfc2dfZm9yX2NwdShh
LT5kZXYsIGEtPnRhYmxlLT5zZ2wsIGEtPnRhYmxlLT5uZW50cywKPiAgCQkJCSAgICBkaXJlY3Rp
b24pOwo+ICAJfQoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
