Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD1925E83
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2024 13:37:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87EDC43F4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jul 2024 11:37:20 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id 8802644261
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jul 2024 11:36:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=lZ0p9FBS;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.46 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52e94eaf5efso1109090e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jul 2024 04:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720006614; x=1720611414; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a9lv0dNph4VIX6fjDIPL0Am9pZ9pFj6rkqPcBPNXsWI=;
        b=lZ0p9FBS+tNzXjeHdf8H6D8yLhzApT2B8cOiseg/vMNAEjXkCdavNjCfWA4EjoAZsz
         51l4h+StmSjh0twIoodx9oSff7fKR+WWoUQYsXTGXdbCkRApgQTfI4M3LFsOvD23LfRL
         rKfgWuCCtwDJP33paD4zXuui12FbD+lDOEsJMDUn0HWFk2axiWFeljAFAZ+840NkHSG1
         eFKdhXfMTVjHUFOhTgrHGRuQ9PldExVWGeeuRa7EHUX2NnZFVrMkSp35R9oZ43bwQmJT
         U+Jtn/x2IRVoTVvL5V5z4pcBY6lm48unVuyrM66z02dx9l+qMGH4dk6D4a77jjdbyej2
         lwpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720006614; x=1720611414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9lv0dNph4VIX6fjDIPL0Am9pZ9pFj6rkqPcBPNXsWI=;
        b=t/q1Oau4nMR4laxSxniHQEH4Vuz/wErupvDq3NtY1LKoSMh86Sv2osI385avcn9sI6
         XyacmLGcLqAQy6STQTzH7ahy57AdKj+WGyfHydLxKUmQqYgX5YMvADt7QYsQOGtLRLz7
         PBhDSSe58iCog1bZ7uCWHadHxbg6838StseguZGn/CGL5666mItD/Zda8/uh6r/E8zXe
         mqyvM5kvReuiqux9pJ/a1srVS6wXyrXPj2RMGntkealAvWuSBWKTVcf3gpb5qb0GDYwB
         P8LUmG9r5qFHjbvssIuY//OXHUNihMcSZc+q1ihvs5k+BY5J6bVTWMNwQ6t1p1th/BCZ
         CL6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW2H98eSj1GMsYN59SnaD42qsssCXItK5Yj5kgx9DrbKdbLscleA2h/KocSX5b04KCimwE4GLrBucuRKiiPBwjjxnJ3NpTfXD0VInETfls=
X-Gm-Message-State: AOJu0Yxt7XqTVKnIFG+tg6XjVsFeab46WUMmVPK5zIELoy5cPQi/8G7v
	SKGT9zNO23NuW1WfgYczhCfX4F3eHgOUHJWQ46cHinrOG2ixhyfvuoTrqMGrSASvmA==
X-Google-Smtp-Source: AGHT+IHq5miROCNaH4d32J0OpMAkkQ6y4cLs6SwoFlGLh4VJCgygoze+j6b1zp7HswtTjkNXT++ySg==
X-Received: by 2002:a05:6512:3f5:b0:52e:8018:279b with SMTP id 2adb3069b0e04-52e82747e45mr4620335e87.69.1720006614203;
        Wed, 03 Jul 2024 04:36:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e96d6be30sm207314e87.306.2024.07.03.04.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 04:36:53 -0700 (PDT)
Date: Wed, 3 Jul 2024 14:36:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
Message-ID: <umwai5fxohuz6apprv6ouhdrnomal4a7cmyhmzpf6dnamnvti2@un4hxx52hkge>
References: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240702-qcom-tee-object-and-ioctls-v1-0-633c3ddf57ee@quicinc.com>
X-Rspamd-Queue-Id: 8802644261
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.46:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,quicinc.com:email,mail-lf1-f46.google.com:helo,mail-lf1-f46.google.com:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Y2SZZB2NDRAVQARIGMDPKGMT3DIRPRB2
X-Message-ID-Hash: Y2SZZB2NDRAVQARIGMDPKGMT3DIRPRB2
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, srinivas.kandagatla@linaro.org, bartosz.golaszewski@linaro.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 0/3] Implement Qualcomm TEE IPC and ioctl calls
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y2SZZB2NDRAVQARIGMDPKGMT3DIRPRB2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jul 02, 2024 at 10:57:35PM GMT, Amirreza Zarrabi wrote:
> Qualcomm TEE hosts Trusted Applications (TAs) and services that run in
> the secure world. Access to these resources is provided using MinkIPC.
> MinkIPC is a capability-based synchronous message passing facility. It
> allows code executing in one domain to invoke objects running in other
> domains. When a process holds a reference to an object that lives in
> another domain, that object reference is a capability. Capabilities
> allow us to separate implementation of policies from implementation of
> the transport.
> 
> As part of the upstreaming of the object invoke driver (called SMC-Invoke
> driver), we need to provide a reasonable kernel API and UAPI. The clear
> option is to use TEE subsystem and write a back-end driver, however the
> TEE subsystem doesn't fit with the design of Qualcomm TEE.
> 
> Does TEE subsystem fit requirements of a capability based system?
> -----------------------------------------------------------------
> In TEE subsystem, to invoke a function:
>    - client should open a device file "/dev/teeX",
>    - create a session with a TA, and
>    - invoke the functions in that session.
> 
> 1. The privilege to invoke a function is determined by a session. If a
>    client has a session, it cannot share it with other clients. Even if
> it does, it is not fine-grained enough, i.e. either all accessible
> functions/resources in a session or none. Assume a scenario when a client
> wants to grant a permission to invoke just a function that it has the rights,
> to another client.
> 
> The "all or nothing" for sharing sessions is not in line with our
> capability system: "if you own a capability, you should be able to grant
> or share it".

Can you please be more specific here? What kind of sharing is expected
on the user side of it?

> 2. In TEE subsystem, resources are managed in a context. Every time a
>    client opens "/dev/teeX", a new context is created to keep track of
> the allocated resources, including opened sessions and remote objects. Any
> effort for sharing resources between two independent clients requires
> involvement of context manager, i.e. the back-end driver. This requires
> implementing some form of policy in the back-end driver.

What kind of resource sharing?

> 3. The TEE subsystem supports two type of memory sharing:
>    - per-device memory pools, and
>    - user defined memory references.
> User defined memory references are private to the application and cannot
> be shared. Memory allocated from per-device "shared" pools are accessible
> using a file descriptor. It can be mapped by any process if it has
> access to it. This means, we cannot provide the resource isolation
> between two clients. Assume a scenario when a client wants to allocate a
> memory (which is shared with TEE) from an "isolated" pool and share it
> with another client, without the right to access the contents of memory.

This doesn't explain, why would it want to share such memory with
another client.

> 4. The kernel API provided by TEE subsystem does not support a kernel
>    supplicant. Adding support requires an execution context (e.g. a
> kernel thread) due to the TEE subsystem design. tee_driver_ops supports
> only "send" and "receive" callbacks and to deliver a request, someone
> should wait on "receive".

There is nothing wrong here, but maybe I'm misunderstanding something.

> We need a callback to "dispatch" or "handle" a request in the context of
> the client thread. It should redirect a request to a kernel service or
> a user supplicant. In TEE subsystem such requirement should be implemented
> in TEE back-end driver, independent from the TEE subsystem.
> 
> 5. The UAPI provided by TEE subsystem is similar to the GPTEE Client
>    interface. This interface is not suitable for a capability system.
> For instance, there is no session in a capability system which means
> either its should not be used, or we should overload its definition.

General comment: maybe adding more detailed explanation of how the
capabilities are aquired and how they can be used might make sense.

BTW. It might be my imperfect English, but each time I see the word
'capability' I'm thinking that some is capable of doing something. I
find it hard to use 'capability' for the reference to another object.

> 
> Can we use TEE subsystem?
> -------------------------
> There are workarounds for some of the issues above. The question is if we
> should define our own UAPI or try to use a hack-y way of fitting into
> the TEE subsystem. I am using word hack-y, as most of the workaround
> involves:
> 
> - "diverging from the definition". For instance, ignoring the session
>   open and close ioctl calls or use file descriptors for all remote
> resources (as, fd is the closet to capability) which undermines the
> isolation provided by the contexts,
> 
> - "overloading the variables". For instance, passing object ID as file
>   descriptors in a place of session ID, or
> 
> - "bypass TEE subsystem". For instance, extensively rely on meta
>   parameters or push everything (e.g. kernel services) to the back-end
> driver, which means leaving almost all TEE subsystem unused.
> 
> We cannot take the full benefits of TEE subsystem and may need to
> implement most of the requirements in the back-end driver. Also, as
> discussed above, the UAPI is not suitable for capability-based use cases.
> We proposed a new set of ioctl calls for SMC-Invoke driver.
> 
> In this series we posted three patches. We implemented a transport
> driver that provides qcom_tee_object. Any object on secure side is
> represented with an instance of qcom_tee_object and any struct exposed
> to TEE should embed an instance of qcom_tee_object. Any, support for new
> services, e.g. memory object, RPMB, userspace clients or supplicants are
> implemented independently from the driver.
> 
> We have a simple memory object and a user driver that uses
> qcom_tee_object.

Could you please point out any user for the uAPI? I'd like to understand
how does it from from the userspace point of view.

> 
> Signed-off-by: Amirreza Zarrabi <quic_azarrabi@quicinc.com>
> ---
> Amirreza Zarrabi (3):
>       firmware: qcom: implement object invoke support
>       firmware: qcom: implement memory object support for TEE
>       firmware: qcom: implement ioctl for TEE object invocation
> 
>  drivers/firmware/qcom/Kconfig                      |   36 +
>  drivers/firmware/qcom/Makefile                     |    2 +
>  drivers/firmware/qcom/qcom_object_invoke/Makefile  |   12 +
>  drivers/firmware/qcom/qcom_object_invoke/async.c   |  142 +++
>  drivers/firmware/qcom/qcom_object_invoke/core.c    | 1139 ++++++++++++++++++
>  drivers/firmware/qcom/qcom_object_invoke/core.h    |  186 +++
>  .../qcom/qcom_object_invoke/qcom_scm_invoke.c      |   22 +
>  .../firmware/qcom/qcom_object_invoke/release_wq.c  |   90 ++
>  .../qcom/qcom_object_invoke/xts/mem_object.c       |  406 +++++++
>  .../qcom_object_invoke/xts/object_invoke_uapi.c    | 1231 ++++++++++++++++++++
>  include/linux/firmware/qcom/qcom_object_invoke.h   |  233 ++++
>  include/uapi/misc/qcom_tee.h                       |  117 ++
>  12 files changed, 3616 insertions(+)
> ---
> base-commit: 74564adfd3521d9e322cfc345fdc132df80f3c79
> change-id: 20240702-qcom-tee-object-and-ioctls-6f52fde03485
> 
> Best regards,
> -- 
> Amirreza Zarrabi <quic_azarrabi@quicinc.com>
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
