Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLe4EMgT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18395412104
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:52:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C82444B4A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:52:23 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id BD2A540144
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:12:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=l74upXwG;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=cJtcd+Pm;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=dmitry.baryshkov@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NIo4gO561294
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:12:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U8+99t2Q08+ketqYxwhfTfYr
	syyINxyz6SnBAR9Q/Mc=; b=l74upXwGKe5nvGSpUt5Sr+jvI1kN0EmQQJwIkT/f
	5rtolmxcSheWmP6r/BFNpA2OevUrbWJ+NAkmQcD4GHilDIXCkTUhHpz27O9z1yFC
	CBVYpIojePUWbaaugRyAZVBDVzIaLJN9nUYCw+bziNJV6OtlW+9iGCmq98a2W/ER
	NeBaHDaTESG+IjXV4SYxQKbS5e25zYOEnyIUu+lFeT7wKvY2JTB4pqTnN1Cb3IaB
	PqrL3bNhhZr7fM8R7W7/fXm16D96rajTYO7RSnV+Yqg/f+pfsHLHRjXOIwXac4Gg
	W9IkXjkizbIiNY7WGpfiVoICtOTDa1h7TAOVvkHQWdq2fQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8ra16n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 22:12:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb0595def4so5792797685a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 14:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771884757; x=1772489557; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U8+99t2Q08+ketqYxwhfTfYrsyyINxyz6SnBAR9Q/Mc=;
        b=cJtcd+PmAXqjcumTqyU+dgowG5xFv8nup6KGwKlA/yX+Sll7TY3FnWnu3OpOtH4GZo
         PnUDGKAQosttOA9m+JgGSm/TqYt9wSpXjAXXxF83o7zTYJR+3XbUfokOZw0L4UrnjKg2
         +zZMGZCD2o8yHJ/6pEB28pYXxNs1U/eQNFZLT3YRTkhVZWUGwx5Ch3Cxe52BUgw5rWaC
         lOQoZTyFXG5hLLpAl2VDGD6Y0NTGIOrD+wFFWdgFvTL2e7aJmmFt656YrO/bwgGIoCqP
         uCzYOicpQVqpyr4GGqIrard0kskRF/CC7/7hox1XaYkg/okvlIDPCsrDX33zxfXo/Cg5
         89vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771884757; x=1772489557;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U8+99t2Q08+ketqYxwhfTfYrsyyINxyz6SnBAR9Q/Mc=;
        b=Dp1fRt7YxtIHp1ITMsIy/fQcCoO2BRe3CdEj5FRrv+sodVhLzfvhZ6K9RhxvyxksB3
         m92dgs2+1JgCaZJbi0FrYuOe8qvg7L227QLMxClViY8RTUhpOwIaHqDToggNzTJkGx5W
         8oRdsa+7b8z4HnvlSKFROm5DAcHgoOEcR3llzhzQrpPb5jIfs4pcHGVgJG+Fqc52hxZF
         nAfuCLHOUNgmawcMcY4joufmiGE+ysOCufhDYzloye18rE9ui+8XzA/C6XCF2n98aiaX
         HPTJ/Zx96jlFS6cRfFSbIcmftcO7F5XiCrx3IpWPwRb+ROUKdD5gSCKrjgZ1llsA/wK6
         7/lg==
X-Forwarded-Encrypted: i=1; AJvYcCVYBhA3K/Y7Jt7wpR3ex3oKhP9bJIBcQqX64SFR4ipV8NyuSdvZFyK2gS68HE4M5sk9AzajoiyB6x8GITfy@lists.linaro.org
X-Gm-Message-State: AOJu0YwadlIakh2XYQrAOvdwDGnmpQQS0O3LyActANYelLDO0sboLtfI
	Zm57KRiowqHC4T/bh3QrI1JVsPM9FCQ6pwBEuxDoB4OYlbcgnw8HNKqym1gj5Vt0Twe4u2KYkcd
	IkRMFKYbzNcdwcyIriKPdOi1ZRzJKKmXImIXqM7mRb0j59Q9oAezPY+SjRP8ZoMJymkMMZw==
X-Gm-Gg: AZuq6aIyB8rMAUYiHjrf5VlcaVJO8WPjgiSDDS9s7xnfMJAZsqgGqiavpmDpTSblNPb
	LDt8k9+v9j2VZEfI29UwxFA+UNVJFvtBgrsRmZuUetSCyA6VW+19/dcuIvfqSEMEuYcRCp/acSF
	wZ7f3E23ec1UDKal9HwzAqEyedFKjgSOCzjrJ2BXL6LY1VnlrRQfj4tLePJcLAtlRFowa0793nE
	FG0nad4h/YpBM7z4vW4u3pC6uxIUn3WzT/A8u+RvFZe7UPYRbidKX5RDVdV/Du0i8FPLN/fVAtm
	U0T86y3udACoM4cvww9JsePWPoF+4cKdQtu7A5RyMoSYqKgEi9xnTaLEonP1f1aDNa+E1dvnTNW
	M8dkL+y4yVuMCHW95XF8V94xENAKPMPLkEnmDd6GmGUou47R0NwtXCZC3yaG8XfaAuYDQtmSTKX
	bt39dE5wLTqT78UHsh8yMpZpO/VavQH8PItns=
X-Received: by 2002:a05:620a:4441:b0:828:faae:b444 with SMTP id af79cd13be357-8cb7bfc8d06mr1818110085a.20.1771884756293;
        Mon, 23 Feb 2026 14:12:36 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:828:faae:b444 with SMTP id af79cd13be357-8cb7bfc8d06mr1818103585a.20.1771884755417;
        Mon, 23 Feb 2026 14:12:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7aaed3esm18805261fa.40.2026.02.23.14.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:12:34 -0800 (PST)
Date: Tue, 24 Feb 2026 00:12:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Message-ID: <r7eko65ua2ofyejqf6ipnh6jm4s76f4mqy6a4msgmlraz4xuec@uymfzc65dbng>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-3-fe46a9c1a046@oss.qualcomm.com>
 <tqsdbijgjomrn7fq3sdz7v2axwxqvbccpjh4fmvod4kbrq7pod@af3igw5dx66p>
 <lyco6vkfjlerri55ldyn6fbhihbkhnuolifddcnscevybsztq7@ljhjln2ynmid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lyco6vkfjlerri55ldyn6fbhihbkhnuolifddcnscevybsztq7@ljhjln2ynmid>
X-Proofpoint-ORIG-GUID: JrPB4yHC6ZUywLGI1HDceRJ1EkcLYMiw
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699cd0d5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=WRMiGO0D-mV3MfwFjRkA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5MyBTYWx0ZWRfX/jBA+sImfLzO
 EbN/qTCqS0YPrgbY6LV67oELx5UiRZtaGA4uhOdbtYRfYFMupOXWbZO355jd5eyouZmtmytbug1
 S61YKaePQZLOn0Cq2ldQvUptQjQpoCdfxAoG2azntou2qENy+nVZ6Xby/wBeT5Wzx7tPFyWp28R
 4pk2iwVRafBDPFvVwJLrMZhCmRmLEhbgOFwfiBdOIiKUoRDB/CmkW+ETsFP0ACQpA2ApkIFDbta
 sX8Cw2BFvNXfghc4vgGSdGTt5cwXSZkVLE1ERx69NWdqxmtku1wFChe0XHkD6cZORBw+ApHpzSE
 7Fysrx4W8oDXKNMbdM1J2OV1tVXuRnb3+eLLdTjbpp9IkL6md+YkXHCY12rYF5PZ70UJRP+h/nI
 U0+JEhFct7WvMLR8/egeoCpgx/bMzcU8FhPweSnbsoEwdAziIBXfOLid71sU0RedGI8DgDmhB+v
 IZnwdh0K5bU4Jx3MBJw==
X-Proofpoint-GUID: JrPB4yHC6ZUywLGI1HDceRJ1EkcLYMiw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230193
X-Spamd-Bar: -----
X-MailFrom: dmitry.baryshkov@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4GTSAUMDDXOEO43QCJDRJ52ATMHZLMSC
X-Message-ID-Hash: 4GTSAUMDDXOEO43QCJDRJ52ATMHZLMSC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:50 +0000
CC: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] accel/qda: Add RPMsg transport for Qualcomm DSP accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4GTSAUMDDXOEO43QCJDRJ52ATMHZLMSC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	DATE_IN_PAST(1.00)[1242];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 18395412104
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Feb 23, 2026 at 03:50:32PM -0600, Bjorn Andersson wrote:
> On Mon, Feb 23, 2026 at 11:23:13PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Feb 24, 2026 at 12:38:57AM +0530, Ekansh Gupta wrote:
> [..]
> > > diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
> [..]
> > > +/* Error logging - always logs and tracks errors */
> > > +#define qda_err(qdev, fmt, ...) do { \
> > > +	struct device *__dev = qda_get_log_device(qdev); \
> > > +	if (__dev) \
> > > +		dev_err(__dev, "[%s] " fmt, __func__, ##__VA_ARGS__); \
> > > +	else \
> > > +		pr_err(DRIVER_NAME ": [%s] " fmt, __func__, ##__VA_ARGS__); \
> > 
> > What /why? You are under drm, so you can use drm_* helpers instead.
> > 
> 
> In particular, rather than rolling our own wrappers around standard
> functions, just use dev_err() whenever you have a struct device. And for
> something like fastrpc - life starts at some probe() and ends at some
> remove() so that should be always.

I'd say differently. For the DRM devices the life cycle is centered
around the DRM device (which can outlive platform device for multiple
reasons). So, please start by registering the DRM accel device and using
it for all the logging (and btw for private data management too).

> 
> Regards,
> Bjorn

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
