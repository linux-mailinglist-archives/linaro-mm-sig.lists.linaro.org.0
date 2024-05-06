Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E38BCAAA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 11:31:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31AA544019
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 May 2024 09:31:01 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id A305F4401A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  6 May 2024 09:30:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcppdkim1 header.b="EM ntq1q";
	spf=pass (lists.linaro.org: domain of quic_charante@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_charante@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4461bNcr015534;
	Mon, 6 May 2024 09:30:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:from:to:cc:references
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=hFy44AivuM6C2jvc5+MBsxAtMFUljnLQ+UiGLJeC+K0=; b=EM
	ntq1qT+oCnEGB7/ChFZ/5yOUlxHc5mY4vpBpZMOvcVTcj9VaWrexKibk8uQ8AnxB
	PjjeOJL/2M7COOEr6XgbZ390vV225qgQPYHn8P3tx8VCmRui+i/L7W6qAB2piPlN
	BMO5ivs/NsdYeByJ8fKWIgnD/f1jU7KKgE5mub/j+Fq/RqFH/1dELVRc/X5uVGkM
	1G1E/IXQIVE4lUZy5kQ6E+7bV8rotZo0UJdKBrLSklRdRcyWqjC/Kv+RmyFCOC72
	Nfx100x6DpNtV3kRALBCar88UidvR3g4ldmvn93MBqQd9fhHCQBLwjWXI6wT8IdP
	hBiHRGNFb/kOirqA2lGg==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xwddc34mb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 May 2024 09:30:43 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4469UfCY022596
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 May 2024 09:30:41 GMT
Received: from [10.216.45.66] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Mon, 6 May 2024
 02:30:37 -0700
Message-ID: <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
Date: Mon, 6 May 2024 15:00:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Charan Teja Kalla <quic_charante@quicinc.com>
To: "T.J. Mercier" <tjmercier@google.com>
References: <20240327022903.776-1-justinjiang@vivo.com>
 <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com>
 <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com>
 <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
In-Reply-To: <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: wLxTjCK0bUBSNS-bbjB_NOmJ_ukpQtL4
X-Proofpoint-GUID: wLxTjCK0bUBSNS-bbjB_NOmJ_ukpQtL4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-06_05,2024-05-03_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=935
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 phishscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2405060064
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A305F4401A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:205.220.180.131];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcppdkim1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[quicinc.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:22843, ipnet:205.220.180.0/24, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[quicinc.com:dkim,mx0b-0031df01.pphosted.com:rdns,mx0b-0031df01.pphosted.com:helo];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_XOIP(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: Z5AKLQ52GKPRWC6IXO26MLG2S3PIBDH6
X-Message-ID-Hash: Z5AKLQ52GKPRWC6IXO26MLG2S3PIBDH6
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z5AKLQ52GKPRWC6IXO26MLG2S3PIBDH6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi TJ,

Seems I have got answers from [1], where it is agreed upon epoll() is
the source of issue.

Thanks a lot for the discussion.

[1] https://lore.kernel.org/lkml/0000000000002d631f0615918f1e@google.com/

Thanks
Charan

On 5/5/2024 9:50 PM, Charan Teja Kalla wrote:
> Thanks T.J for the reply!!
> 
> On 5/4/2024 4:43 AM, T.J. Mercier wrote:
>> It looks like a similar conclusion about epoll was reached at:
>> https://lore.kernel.org/all/a87d7ef8-2c59-4dc5-ba0a-b821d1effc72@amd.com/
>>
> I am unaware of this discussion. Thanks...
> 
>> I agree with Christian that it should not be possible for the file to
>> be freed while inside dma_buf_poll. Aside from causing problems in
>> dma_buf_poll, ep_item_poll itself would have issues dereferencing the
>> freed file pointer.
>>
> Not sure about my understanding: ep_item_poll() always call the ->poll()
> interface with a stable 'struct file' because of ep->mtx. This lock
> ensures that:
>    a) If eventpoll_release_file() get the ep->mtx first, ->poll()
> corresponds to the epitem(target file) will never be called, because it
> is removed from the rdlist.
> 
>    b) If ep_send_events() get the ep->mtx() first, ->poll() will get
> called with a stable 'struct file', __but the refcount(->f_count) of a
> file can be zero__. I am saying that this is stable because the 'struct
> file' contents are still valid till we are in ->poll().
> 
> Can you/Christian help me with what I am missing here to say that
> ->poll() is receiving stale 'struct file*', please?
> 
> And, If you are convinced with above, I think, It should have been the
> responsibility of ->poll() implementation to have taken refcount on a
> file that is going to be still valid even after ->poll() exits. Incase
> of dma_buf_poll() implementation, it took the refcount on a file that is
> not going to be valid once the dma_buf_poll() exits(because of mentioned
> race with the freeing of the 'struct file*').
> 
> So, in dma_buf_poll(), Should we be using atomic_long_inc_not_zero()
> based implementation to take the refcount on a file?
> 
> Thanks,
> Charan
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
