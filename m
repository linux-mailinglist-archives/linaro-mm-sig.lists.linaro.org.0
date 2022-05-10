Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC0452CB5E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 07:05:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EF3B410A2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 05:05:15 +0000 (UTC)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
	by lists.linaro.org (Postfix) with ESMTPS id 3FFF93ED39
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 02:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652150622; x=1683686622;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=InTny3n7yeTKHBypR3lvOVYf18pf04hsVskSXrNlYf0=;
  b=RxzG1VwMS0kJA+EoJh9lXHu6DYkhfdcc2nvshR4cqy3VRecD0KWIpLjS
   Gwm7s3iRy3Z8Gb+LGGFEPxRijqO1kHd1qpJEWQsWkMyfJkrWj/HVWqbBS
   kkw5pGKWIMJrvLkHEpeInBz15XUS+kV8gKGO0JLVKf8H6+HvVXGlDMHW1
   g=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 09 May 2022 19:43:41 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May 2022 19:43:41 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 9 May 2022 19:43:41 -0700
Received: from [10.216.42.221] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 9 May 2022
 19:43:37 -0700
Message-ID: <51bc6d33-c5f5-2a6e-fd83-ffebbe2e0202@quicinc.com>
Date: Tue, 10 May 2022 08:13:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>
References: <1652125797-2043-1-git-send-email-quic_charante@quicinc.com>
 <CABdmKX2V55tA-Or6Dd+bpbcv3fDHps_+zHHJQwhz819LX_2RSQ@mail.gmail.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <CABdmKX2V55tA-Or6Dd+bpbcv3fDHps_+zHHJQwhz819LX_2RSQ@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4UP35C7VNGHIKVLWQKV7ZBECIPGBHE53
X-Message-ID-Hash: 4UP35C7VNGHIKVLWQKV7ZBECIPGBHE53
X-Mailman-Approved-At: Thu, 19 May 2022 05:05:09 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Hridya Valsaraju <hridya@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: call dma_buf_stats_setup after dmabuf is in valid list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4UP35C7VNGHIKVLWQKV7ZBECIPGBHE53/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Mercier,

On 5/10/2022 3:19 AM, T.J. Mercier wrote:
> On Mon, May 9, 2022 at 12:50 PM Charan Teja Kalla
> <quic_charante@quicinc.com> wrote:
>> From: Charan Teja Reddy <quic_charante@quicinc.com>
>>
>> When dma_buf_stats_setup() fails, it closes the dmabuf file which
>> results into the calling of dma_buf_file_release() where it does
>> list_del(&dmabuf->list_node) with out first adding it to the proper
>> list. This is resulting into panic in the below path:
>> __list_del_entry_valid+0x38/0xac
>> dma_buf_file_release+0x74/0x158
>> __fput+0xf4/0x428
>> ____fput+0x14/0x24
>> task_work_run+0x178/0x24c
>> do_notify_resume+0x194/0x264
>> work_pending+0xc/0x5f0
>>
>> Fix it by moving the dma_buf_stats_setup() after dmabuf is added to the
>> list.
>>
>> Fixes: bdb8d06dfefd ("dmabuf: Add the capability to expose DMA-BUF stats in sysfs")
>> Signed-off-by: Charan Teja Reddy <quic_charante@quicinc.com>
> Tested-by: T.J. Mercier <tjmercier@google.com>
> Acked-by: T.J. Mercier <tjmercier@google.com>
> 

Thanks for the Ack. Also Realized that it should have:
Cc: <stable@vger.kernel.org> # 5.15.x+
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
