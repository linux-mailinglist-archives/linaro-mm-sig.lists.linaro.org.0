Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F352ED1D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 15:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1413F410C7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 May 2022 13:30:56 +0000 (UTC)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
	by lists.linaro.org (Postfix) with ESMTPS id 43EE74802E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 11:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652183714; x=1683719714;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Dm3X0ozVMRc4qPMKkmV0VxYC7We4StxOkXMsdvVYhuI=;
  b=blyBUH/3gcyUJffTCUkvF3RGTRyMIuMScYpdEHK9vEY/ZmU073TQ9hRq
   Of1rF2T1YM5e8vZd4+Zx952Lfa+F28CQ6MMG+gOPv5vXFvODjTXYgXC8M
   sFDowY2CR9b+936AMrqYfFRcY15b8OTCDHadSVtJS+QPaEDeTOfbjSwF2
   g=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 10 May 2022 04:55:13 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 04:55:10 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 04:55:08 -0700
Received: from [10.216.42.221] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 10 May
 2022 04:55:04 -0700
Message-ID: <c95bd5fb-0880-c98b-5f5c-b2b0bdd7b042@quicinc.com>
Date: Tue, 10 May 2022 17:25:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
References: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
 <YnpF1XP1tH83uBlM@kroah.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <YnpF1XP1tH83uBlM@kroah.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4XZWGAWMCCCXZ6LGCMN3J6QQGLBYMQ7U
X-Message-ID-Hash: 4XZWGAWMCCCXZ6LGCMN3J6QQGLBYMQ7U
X-Mailman-Approved-At: Fri, 20 May 2022 13:30:50 +0000
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, tjmercier@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4XZWGAWMCCCXZ6LGCMN3J6QQGLBYMQ7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks Greg for the inputs!!

On 5/10/2022 4:30 PM, Greg KH wrote:
>> The dmabuf file uses get_next_ino()(through dma_buf_getfile() ->
>> alloc_anon_inode()) to get an inode number and uses the same as a
>> directory name under /sys/kernel/dmabuf/buffers/<ino>. This directory is
>> used to collect the dmabuf stats and it is created through
>> dma_buf_stats_setup(). At current, failure to create this directory
>> entry can make the dma_buf_export() to fail.
>>
>> Now, as the get_next_ino() can definitely give a repetitive inode no
>> causing the directory entry creation to fail with -EEXIST. This is a
>> problem on the systems where dmabuf stats functionality is enabled on
>> the production builds can make the dma_buf_export(), though the dmabuf
>> memory is allocated successfully, to fail just because it couldn't
>> create stats entry.
> Then maybe we should not fail the creation path of the kobject fails to
> be created?  It's just for debugging, it should be fine if the creation
> of it isn't there.

Not creating the debug node under some special cases can make this
interface not reliable if one wants to know info about the created
dmabuf buffers. Please help in correcting me If my perspective is wrong
here.

IIUC, except this -EEXIST condition, under the other conditions (-EINVAL
and -ENOMEM) failure is fine. Since, we are going to fix the -EEXIST
error in this patch, my opinion is failure in the kobject creation path
is acceptable for the reasons: a) The user is expected to pass the valid
dmabuf to create the stats node, b) The user can undefine the
CONFIG_DMABUF_SYSFS_STATS if he don't want this stats.

> 
>> This issue we are able to see on the snapdragon system within 13 days
>> where there already exists a directory with inode no "122602" so
>> dma_buf_stats_setup() failed with -EEXIST as it is trying to create
>> the same directory entry.
>>
>> To make the directory entry as unique, append the inode creation time to
>> the inode. With this change the stats directory entries will be in the
>> format of: /sys/kernel/dmabuf/buffers/<inode no>-<inode creation time in
>> secs>.
> As you are changing the format here, shouldn't the Documentation/ABI/
> entry for this also be changed?
> 
> And what's to keep the seconds field from also being the same?

get_next_ino() just increases the inode number monotonically and return
to the caller and it is 'unsigned int' data type. Thus 2 successive
calls always generate the different inode_number but can be the same
secs value.  With inode-secs format, this will be still be a unique
string.  Say it will be like ino1-sec1 and ino2-sec1.

Now after the inode number overflow and wraps, we may get the ino1 again
from the get_next_ino() but then secs will be different i.e. say it may
be like ino1-secn and ion2-secn. So, it always be a unique string.

IOW, with secs field added, to get the same inode-secs string, the uint
should overflow in the same second which is impossible.

Thanks for pointing out the changes to be done in ABI document. Will do
it in the next spin.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
